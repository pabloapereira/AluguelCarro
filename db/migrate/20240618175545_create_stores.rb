class CreateStores < ActiveRecord::Migration[7.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :cnpj
      t.string :address
      t.integer :telephone

      t.timestamps
    end
  end
end
