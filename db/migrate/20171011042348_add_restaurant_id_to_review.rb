class AddRestaurantIdToReview < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :restaurant_id, foreign_key: true, index: true
  end
end
