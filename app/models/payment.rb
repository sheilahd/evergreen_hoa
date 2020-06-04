class Payment < ApplicationRecord
  belongs_to :customer
  validates :sqft, presence: true
  validates :sqft, numericality: { greater_than_or_equal_to: 1}
  validates :customer_id, presence: true
  validates_presence_of :customer
  validates :pay_freq, inclusion: { in: [true, false] }



def mult
  fee = 0.15 * sqft.to_i
end
end
