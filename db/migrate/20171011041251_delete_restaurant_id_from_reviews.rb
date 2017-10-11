class DeleteRestaurantIdFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :id_restaurants, :integer
  end
end
