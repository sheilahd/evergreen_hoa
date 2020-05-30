class Post < ApplicationRecord
  belongs_to :customer
  has_many :comments
  validates :title, presence: true
  validates :body, presence: true
  validates :customer_id, presence: true
  validates_presence_of :customer
end
