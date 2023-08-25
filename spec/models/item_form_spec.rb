require 'rails_helper'

RSpec.describe ItemForm, type: :model do
  before do
    @list = FactoryBot.create(:list)
    @item_form = FactoryBot.build(:item_form, list_id: @list.id)

    @item_form.images = []
    4.times do
      image = fixture_file_upload('db/seeds/images/item1-1.png')
      @item_form.images << image
    end

    @item_form.tag_names = [ @item_form.tag_name ]
    3.times do
      tag_name = Faker::Adjective.positive
      @item_form.tag_names << tag_name
    end

    @item_form.scores = [ @item_form.score ]
    3.times do
      score = Faker::Number.between(from: 1, to: 5)
      @item_form.scores << score
    end

    sleep(0.1)
  end

  describe 'アイテム・タグ・スコア新規投稿' do
    context '新規投稿できる場合' do
      it '5項目を適切に入力する: item_name, description, images, tag_names, scores' do
        expect(@item_form).to be_valid
      end

      it 'description は空でも保存できる' do
        @item_form.description = ""
        expect(@item_form).to be_valid
      end
      it 'images は空でも保存できる' do
        @item_form.images = []
        expect(@item_form).to be_valid
      end
      it 'tag_names は空でも保存できる' do
        @item_form.tag_names = []
        expect(@item_form).to be_valid
      end
      it 'scores は空でも保存できる' do
        @item_form.scores = []
        expect(@item_form).to be_valid
      end
    end

    context '新規投稿できない場合' do
      it 'item_name が空では保存できない' do
        @item_form.item_name = ""
        @item_form.valid?
        expect(@item_form.errors.full_messages).to include("Item name can't be blank")
      end

      it 'images の要素数が5個以上では保存できない' do
        image = fixture_file_upload('db/seeds/images/item1-1.png')
        @item_form.images << image
        expect(@item_form.errors.added?(:images, :too_short, count: 4)).to be false
      end

      it 'tag_names の要素数が5個以上では保存できない' do
        tag_name = Faker::Adjective.positive
        @item_form.tag_names << tag_name
        expect(@item_form.errors.added?(:tag_names, :too_short, count: 4)).to be false
      end

      it 'tag_name が過去の登録情報と重複する場合は保存できない' do
        @item_form.save
        @item_form2 = FactoryBot.build(:item_form, list_id: @list.id)
        @item_form2.tag_names = []
        @item_form2.tag_names[0] = @item_form.tag_names[0]
        @item_form2.valid?
        expect(@item_form2.errors.of_kind?(:tag_name)).to be false
      end
      it 'tag_name が26文字以上では保存できない' do
        @item_form.tag_name = Faker::Lorem.characters(number: 26)
        @item_form.valid?
        expect(@item_form.errors.full_messages).to include("Tag name is too long (maximum is 25 characters)")
      end

      it 'scores の要素数が5個以上では保存できない' do
        score = Faker::Number.between(from: 1, to: 5)
        @item_form.scores << score
        expect(@item_form.errors.added?(:scores, :too_short, count: 4)).to be false
      end

      it 'score が0以下では保存できない' do
        @item_form.score = Faker::Number.between(from: -10, to: 0)
        @item_form.valid?
        expect(@item_form.errors.full_messages).to include("Score must be greater than or equal to 1")
      end
      it 'score が6以上では保存できない' do
        @item_form.score = Faker::Number.between(from: 6, to: 10)
        @item_form.valid?
        expect(@item_form.errors.full_messages).to include("Score must be less than or equal to 5")
      end
      it 'score が小数を含むと保存できない' do
        @item_form.score = Faker::Number.between(from: 1.0, to: 5.0)
        @item_form.valid?
        expect(@item_form.errors.full_messages).to include("Score must be an integer")
      end
      it 'score が半角英字では保存できない' do
        @item_form.score = Faker::Alphanumeric.alpha(number: 1)
        @item_form.valid?
        expect(@item_form.errors.full_messages).to include("Score is not a number")
      end
      it 'score が全角文字では保存できない' do
        @item_form.score = Faker::Color.color_name
        @item_form.valid?
        expect(@item_form.errors.full_messages).to include("Score is not a number")
      end

      it 'list が紐付いていないと保存できない' do
        @item_form.list_id = nil
        @item_form.valid?
        expect(@item_form.errors.of_kind?(:list_id)).to be false
      end
    end
  end
end
