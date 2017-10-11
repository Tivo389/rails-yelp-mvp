class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.integer :id_restaurants

      t.timestamps
    end
  end
end
