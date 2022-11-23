class Post < ApplicationRecord
  after_save :update_posts_counter
  after_initialize :set_defaults

  validates :title, presence: true, length: { in: 1..250 }
  validates :comments_counter, :likes_counter, comparison: { greater_than_or_equal_to: 0 },
                                               numericality: { only_integer: true }

  belongs_to :author, class_name: 'User'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def recent_five
    comments.order(created_at: :desc).limit(5)
  end

  private

  def set_defaults
    self.comments_counter = 0
    self.likes_counter = 0
  end

  def update_posts_counter
    author.update(posts_counter: author.posts.all.length)
  end
end
