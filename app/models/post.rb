class Post < ApplicationRecord
	validates(:title, presence: true, length: { in: 5..30 })
	validates(:body, presence: true, length: { in: 10..1_000 })
	validates(:user_id, presence: { message: 'must be associated with a user as author' })

	belongs_to :user

	has_many :comments
end
