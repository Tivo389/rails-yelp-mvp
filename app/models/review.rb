class Review < ApplicationRecord
  CATEGORIES = (0..5).to_a
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5, message: "%{value} is not a valid rating" }, numericality: true
  belongs_to :restaurant
end
