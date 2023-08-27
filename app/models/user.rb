class User < ApplicationRecord
  has_many :lists, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/ }, length: { minimum: 8, maximum: 16 }, allow_blank: true
  validates :real_name, :user_name, presence: true, length: { maximum: 30 }
  validates :contact, length: { maximum: 100 }
  validates :profile, length: { maximum: 200 }

  # app/controllers/users/registrations_controller.rb (def update_resource)
  # ：現在のパスワードを入力せずに(入力欄が空欄のままで)、ユーザー情報更新。別のパスワードを入力すると、パスワード変更。
  def update_without_current_password(params, *options)
    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update(params, *options)
    clean_up_passwords
    result
  end
end
