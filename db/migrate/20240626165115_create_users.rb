class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :cpf
      t.integer :age
      t.string :driver_license
      t.integer :car

      t.timestamps
    end
  end
end
