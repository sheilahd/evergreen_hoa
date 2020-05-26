class Post < ApplicationRecord
  belongs_to :customer
  has_many :comments
  validates :title, presence: true
  validates :body, presence: true
end
