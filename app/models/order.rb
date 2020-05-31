class Order < ApplicationRecord
  DOCUMENTS = ["Construction Permit", "Fences Renovation ", "Parking Permit", "Landscaping"]
  belongs_to :customer
  validates :doc_name, presence: true
  validates :doc_count, presence: true
  validates :doc_count, numericality: { greater_than_or_equal_to: 1}
  validates :customer_id, presence: true
  validates_presence_of :customer


def self.documents
  two_d = []
DOCUMENTS.each do |d|
      two_d << [d,d]
    end
    return two_d
  end
end
