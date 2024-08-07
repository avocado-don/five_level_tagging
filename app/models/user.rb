class User < ApplicationRecord
  has_many :lists, dependent: :destroy

  # users_controller.rb (def index) ：各ユーザーが更新した最新のリスト1件ずつを取得する(N+1を回避)。
  has_one :latest_list, -> {
    where(
      <<~SQL
        NOT EXISTS (
          SELECT 1 FROM lists AS l
            WHERE
              lists.updated_at < l.updated_at AND
              lists.user_id = l.user_id
        )
      SQL
    )
  }, class_name: "List"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/ }, length: { minimum: 8, maximum: 16 }, allow_blank: true
  validates :real_name, :user_name, presence: true, length: { maximum: 30 }
  validates :contact, length: { maximum: 100 }
  validates :profile, length: { maximum: 200 }

  def self.ransackable_attributes(auth_object = nil)
    []
  end

  def self.ransortable_attributes(auth_object = nil)
    ["user_name"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["lists", "latest_list"]
  end
end
