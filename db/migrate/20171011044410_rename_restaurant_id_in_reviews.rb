class RenameRestaurantIdInReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :restaurant_id_id, :references
  end
end
