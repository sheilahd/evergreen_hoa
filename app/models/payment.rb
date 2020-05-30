class Payment < ApplicationRecord
  belongs_to :customer
  validates :sqft, presence: true
  validates :sqft, numericality: { greater_than_or_equal_to: 1}

def mult
  fee = 0.15 * sqft.to_i
end
end
