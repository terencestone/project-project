class User < ApplicationRecord
	has_many :pitches, foreign_key: :creator_id
	has_many :votes
	has_one :membership, foreign_key: :member_id

	has_secure_password
	validates :password, length: { minimum: 6 }
	validates :username, presence: true, uniqueness: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
