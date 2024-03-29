require 'rails_helper'

RSpec.describe List, type: :model do
  before do
    @list = FactoryBot.build(:list)
  end

  describe 'リスト新規投稿' do
    context '新規投稿できる場合' do
      it '3項目を適切に入力する: title, concept, rule' do
        expect(@list).to be_valid
      end

      it 'concept は空でも保存できる' do
        @list.concept = ""
        expect(@list).to be_valid
      end
      it 'rule は空でも保存できる' do
        @list.rule = ""
        expect(@list).to be_valid
      end
    end

    context '新規投稿できない場合' do
      it 'title が空では保存できない' do
        @list.title = ""
        @list.valid?
        expect(@list.errors.full_messages).to include("Title can't be blank")
      end
    end

    it 'user が紐付いていないと保存できない' do
      @list.user = nil
      @list.valid?
      expect(@list.errors.full_messages).to include("User must exist")
    end
  end
end
