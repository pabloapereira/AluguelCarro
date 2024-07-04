class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :plate
      t.integer :year
      t.string :brand
      t.integer :renavam

      t.timestamps
    end
  end
end
