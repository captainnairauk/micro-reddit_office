class Comment < ActiveRecord::Base
    has_many :users
    belongs_to :post

    validates :user_id, presence: true
    validates :post_id, presence: true
    validates :comment, presence: true, length: {maximum: 250}
end
