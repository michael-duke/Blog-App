class User < ApplicationRecord
  after_initialize :set_defaults

  validates :name, presence: true
  validates :posts_counter, comparison: { greater_than_or_equal_to: 0 }, numericality: { only_integer: true }

  has_many :posts, foreign_key: :author_id, dependent: :destroy
  has_many :comments, foreign_key: :author_id, dependent: :destroy
  has_many :likes, foreign_key: :author_id, dependent: :destroy

  def recent_three
    posts.order(created_at: :desc).limit(3)
  end

  private

  def set_defaults
    self.posts_counter = 0
  end
end
