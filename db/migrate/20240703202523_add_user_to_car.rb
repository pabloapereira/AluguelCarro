class AddUserToCar < ActiveRecord::Migration[7.1]
  def change
    add_reference :cars, :users, null: false, foreign_key: true
  end
end
