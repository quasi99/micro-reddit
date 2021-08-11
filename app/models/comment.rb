class Comment < ApplicationRecord
  validates(:body, presence: true, length: { in: 10..100 })
  validates(:user_id, presence: true)
  validates(:post_id, presence: true)

  belongs_to :user
  belongs_to :post
end
