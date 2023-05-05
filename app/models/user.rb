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
end
