class Customer < ApplicationRecord
  STREETS = ["London Plain ", "Wax Myrtle ", "Mint "]
  has_many :orders
  has_many :posts
  has_many :payments

  validates :fam_name, presence: true
  validates :st_name, presence: true
  validates :st_numb, presence: true
  # validates :st_numb, uniqueness: true
  validates :phone, presence: true
  validates :phone, numericality: { only_integer: true }
  validates :phone, length: { is: 10}
  validates :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

def full_address
    "#{st_numb} #{st_name} ct, Cary, NC, 27513"
  end
end
