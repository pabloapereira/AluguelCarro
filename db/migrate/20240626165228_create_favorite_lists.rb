class CreateFavoriteLists < ActiveRecord::Migration[7.1]
  def change
    create_table :favorite_lists do |t|

      t.timestamps
    end
  end
end
