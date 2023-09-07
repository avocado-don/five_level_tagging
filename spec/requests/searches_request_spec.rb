require 'rails_helper'

RSpec.describe "Searches", type: :request do
  let(:params) { { word: word, model: model, condition: condition, commit: "送信" } }

  # 検索ワード(params[:word]に代入)：レコードの各カラムの先頭5文字と一致するワード。リストやアイテムが同一の場合(same)と、複数の場合(any)。
  let(:in_same_list) { "#{lists[0].title.slice(0,5)}　#{lists[0].concept.slice(0,5)}　#{lists[0].rule.slice(0,5)}" }
  let(:in_any_lists) { "#{lists[0].title.slice(0,5)}　#{lists[1].concept.slice(0,5)}　#{lists[2].rule.slice(0,5)}" }

  let(:in_same_item) {
    "#{lists[0].items[0].item_name.slice(0,5)}　#{lists[0].items[0].description.slice(0,5)}　#{lists[0].items[0].tags[0].tag_name.slice(0,5)}"
  }
  let(:in_any_items) {
    "#{lists[0].items[0].item_name.slice(0,5)}　#{lists[1].items[0].description.slice(0,5)}　#{lists[2].items[0].tags[0].tag_name.slice(0,5)}"
  }

  # レコード生成：3人のユーザーが1人1つのリストを投稿。各リストに1組のアイテム・タグ・スコアを投稿。3つのリスト、3つのアイテムを検索するテスト。
  let(:lists) { create_list(:list, 3) }
  before do
    3.times do |i|
      item_form = build(:item_form, list_id: lists[i].id)
      item_form.tag_names = [ item_form.tag_name ]
      item_form.scores = [ item_form.score ]
      item_form.save
    end
  end

  describe 'リスト検索・AND検索' do
    let(:model) { "List" }
    let(:condition) { "AND" }

    context '全てのワードが、同一のリスト(リストカラム)に含まれる場合' do
      let(:word) { in_same_list }
      it '全てのワードを含むリストを表示する' do
        get search_path, params: params
        expect(response.body).to include(lists[0].concept)
      end
    end
    context '全てのワードが、同一のリスト(リストに紐づくアイテムやタグ)に含まれる場合' do
      let(:word) { in_same_item }
      it '全てのワードを含むリストを表示する' do
        get search_path, params: params
        expect(response.body).to include(lists[0].concept)
      end
    end

    context '全てのワードが、同一のリスト(リストカラム)に含まれない場合' do
      let(:word) { in_any_lists }
      it 'レコードを1件も表示しない' do
        get search_path, params: params
        expect(response.body).to_not include("検索件数")
      end
    end
    context '全てのワードが、同一のリスト(リストに紐づくアイテムやタグ)に含まれない場合' do
      let(:word) { in_any_items }
      it 'レコードを1件も表示しない' do
        get search_path, params: params
        expect(response.body).to_not include("検索件数")
      end
    end
  end

  describe 'リスト検索・OR検索' do
    let(:model) { "List" }
    let(:condition) { "OR" }

    context 'いずれかのワードが、いずれかのリスト(リストカラム)に含まれる場合' do
      let(:word) { in_any_lists }
      it 'いずれかのワードを含むリストを表示する' do
        get search_path, params: params
        expect(response.body).to include(lists[0].concept).and include(lists[1].concept).and include(lists[2].concept)
      end
    end
    context 'いずれかのワードが、いずれかのリスト(リストに紐づくアイテムやタグ)に含まれる場合' do
      let(:word) { in_any_items }
      it 'いずれかのワードを含むリストを表示する' do
        get search_path, params: params
        expect(response.body).to include(lists[0].concept).and include(lists[1].concept).and include(lists[2].concept)
      end
    end

    context 'いずれのワードも、全てのリスト(リストカラム、リストに紐づくアイテムやタグ)に含まれない場合' do
      let(:word) { "あいうえお　かきくけこ" }
      it 'レコードを1件も表示しない' do
        get search_path, params: params
        expect(response.body).to_not include("検索件数")
      end
    end
  end

  describe 'アイテム検索・AND検索' do
    let(:model) { "Item" }
    let(:condition) { "AND" }

    context '全てのワードが、同一のアイテム(アイテムに紐づくタグ)に含まれる場合' do
      let(:word) { in_same_item }
      it '全てのワードを含むアイテムを表示する' do
        get search_path, params: params
        expect(response.body).to include(lists[0].items[0].description)
      end
    end

    context '全てのワードが、同一のアイテム(アイテムに紐づくタグ)に含まれない場合' do
      let(:word) { in_any_items }
      it 'レコードを1件も表示しない' do
        get search_path, params: params
        expect(response.body).to_not include("検索件数")
      end
    end
  end

  describe 'アイテム検索・OR検索' do
    let(:model) { "Item" }
    let(:condition) { "OR" }

    context 'いずれかのワードが、いずれかのアイテム(アイテムに紐づくタグ)に含まれる場合' do
      let(:word) { in_any_items }
      it 'いずれかのワードを含むアイテムを表示する' do
        get search_path, params: params
        expect(response.body).to include(lists[0].items[0].description).and include(lists[1].items[0].description).and include(lists[2].items[0].description)
      end
    end

    context 'いずれのワードも、全てのアイテム(アイテムに紐づくタグ)に含まれない場合' do
      let(:word) { "あいうえお　かきくけこ" }
      it 'レコードを1件も表示しない' do
        get search_path, params: params
        expect(response.body).to_not include("検索件数")
      end
    end
  end

  describe '空検索' do
    context '検索画面に遷移し、送信ボタンを押していない場合' do
      it 'レコードを1件も表示しない' do
        get search_path
        expect(response.body).to_not include("検索件数")
      end
    end
    context 'ワードが未入力のまま、または空白のみ入力し、送信ボタンを押した場合(model, conditionの値は不問)' do
      let(:model) { "List" }
      let(:condition) { "AND" }
      let(:word) { "" }
      it 'レコードを1件も表示しない' do
        get search_path, params: params
        expect(response.body).to_not include("検索件数")
      end
    end
  end
end
