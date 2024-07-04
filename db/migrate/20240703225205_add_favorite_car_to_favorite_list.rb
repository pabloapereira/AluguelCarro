class AddFavoriteCarToFavoriteList < ActiveRecord::Migration[7.1]
  def change
    add_reference :favorite_lists, :favorite_cars, null: false, foreign_key: true
  end
end
