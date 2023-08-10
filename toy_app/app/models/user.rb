class User < ApplicationRecord
    has_many :microposts
    validates :name, presence: true, length: { maximum: 140 }
    validates :email, presence: true, format: URI::MailTo::EMAIL_REGEXP
end
