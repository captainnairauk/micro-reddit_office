class User < ActiveRecord::Base
    has_many :posts
    has_many :comments
    
    validates :user_name, presence: true, uniqueness: true, length: { maximum: 12 }
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { maximum: 16 }
end
