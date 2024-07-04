class CreateFavoriteCars < ActiveRecord::Migration[7.1]
  def change
    create_table :favorite_cars do |t|

      t.timestamps
    end
  end
end
