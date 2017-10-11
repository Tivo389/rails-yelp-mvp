class LinkReviewsToRestaurant < ActiveRecord::Migration[5.0]
  def change
    change_column :reviews, :id_restaurants, :belongs_to, index: true
  end
end
