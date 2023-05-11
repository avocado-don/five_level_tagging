require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it '7項目を適切に入力する: email, password, password_confirmation, real_name, user_name, contact, profile' do
        expect(@user).to be_valid
      end

      it 'contact は空でも保存できる' do
        @user.contact = ""
        expect(@user).to be_valid
      end
      it 'profile は空でも保存できる' do
        @user.profile = ""
        expect(@user).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'email が空では保存できない' do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'email が過去の登録情報と重複する場合は保存できない' do
        @user.save
        @user2 = FactoryBot.build(:user, email: @user.email)
        @user2.valid?
        expect(@user2.errors.full_messages).to include("Email has already been taken")
      end
      it 'email は @ を含まないと保存できない' do
        @user.email = "lorem"
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end

      it 'password が空では保存できない' do
        @user.password = ""
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'password が7文字以下では保存できない' do
        @user.password = Faker::Lorem.characters(number: 7, min_alpha: 1, min_numeric: 1)
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 8 characters)")
      end
      it 'password が17文字以上では保存できない' do
        @user.password = Faker::Lorem.characters(number: 17, min_alpha: 1, min_numeric: 1)
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too long (maximum is 16 characters)")
      end
      it 'password が英字だけでは保存できない' do
        @user.password = Faker::Lorem.characters(number: 8, min_alpha: 8)
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
      it 'password が数字だけでは保存できない' do
        @user.password = Faker::Number.number(digits: 8)
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
      it 'password と password_confirmation が不一致では保存できない' do
        @user.password = Faker::Lorem.characters(number: 8, min_alpha: 1, min_numeric: 1)
        @user.password_confirmation = "#{@user.password}z"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'password と password_confirmation の大文字と小文字が不一致では保存できない' do
        @user.password = "Abcd5678"
        @user.password_confirmation = "abcd5678"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it 'real_name が空では保存できない' do
        @user.real_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Real name can't be blank")
      end
      it 'real_name が31文字以上では保存できない' do
        @user.real_name = Faker::Lorem.characters(number: 31)
        @user.valid?
        expect(@user.errors.full_messages).to include("Real name is too long (maximum is 30 characters)")
      end

      it 'user_name が空では保存できない' do
        @user.user_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("User name can't be blank")
      end
      it 'user_name が31文字以上では保存できない' do
        @user.user_name = Faker::Lorem.characters(number: 31)
        @user.valid?
        expect(@user.errors.full_messages).to include("User name is too long (maximum is 30 characters)")
      end

      it 'contact が101文字以上では保存できない' do
        @user.contact = Faker::Lorem.paragraph_by_chars(number: 101)
        @user.valid?
        expect(@user.errors.full_messages).to include("Contact is too long (maximum is 100 characters)")
      end

      it 'profile が201文字以上では保存できない' do
        @user.profile = Faker::Lorem.paragraph_by_chars(number: 201)
        @user.valid?
        expect(@user.errors.full_messages).to include("Profile is too long (maximum is 200 characters)")
      end
    end
  end
end
