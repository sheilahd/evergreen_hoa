class Comment < ApplicationRecord
  belongs_to :customer through :posts
  validates :content, presence: true
end
