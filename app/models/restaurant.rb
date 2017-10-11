class Restaurant < ApplicationRecord
  CATEGORIES = %w(chinese italian japanese french belgian)
  validates :name, :address, presence: true, uniqueness: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian), message: "%{value} is not a valid category" }
  has_many :reviews, dependent: :destroy
end
