class Customer < ApplicationRecord
  has_many :orders
  has_many :comments
  has_many :posts
  validates :fam_name, presence: true
  validates :st_name, presence: true
  validates :st_numb, presence: true
  # validates :st_numb, uniqueness: true


def full_address
    "#{st_numb} #{st_name} ct, Cary, NC, 27513"
  end
end
