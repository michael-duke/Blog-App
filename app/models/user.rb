class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  validates :name, presence: true
  validates :posts_counter, comparison: { greater_than_or_equal_to: 0 }, numericality: { only_integer: true }

  has_many :posts, foreign_key: :author_id, dependent: :destroy
  has_many :comments, foreign_key: :author_id, dependent: :destroy
  has_many :likes, foreign_key: :author_id, dependent: :destroy

  # User::Roles
  # The available roles
  Roles = [ :admin , :default ]

  def is?( requested_role )
    self.role == requested_role.to_s
  end

  def recent_three
    posts.order(created_at: :desc).limit(3)
  end
end
