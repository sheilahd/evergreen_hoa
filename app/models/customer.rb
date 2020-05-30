class Customer < ApplicationRecord
  STREETS = ["London Plain ct ", "Wax Myrtle ct ", "Mint ct"]
  has_many :orders
  validates :fam_name, presence: true
  validates :st_name, presence: true
  validates :st_numb, presence: true
  # validates :st_numb, uniqueness: true
  has_many :posts
  has_many :payments

def full_address
    "#{st_numb} #{st_name}, Cary, NC, 27513"
  end
end
