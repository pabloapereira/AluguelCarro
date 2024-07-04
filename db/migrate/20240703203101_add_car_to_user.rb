class AddCarToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :car, null: false, foreign_key: true
  end
end
