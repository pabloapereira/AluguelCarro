class CreateCarUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :cars, :users do |t|
      t.belongs_to :car
      t.belongs_to :user
    end
  end
end
