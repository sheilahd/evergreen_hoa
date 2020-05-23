class Order < ApplicationRecord
  belongs_to :customer
  validates :doc_name, presence: true
  validates :doc_count, presence: true
  validates :doc_count, numericality: { greater_than: 0 }
  validates :customer_id, presence: true
validates_presence_of :customer
end
