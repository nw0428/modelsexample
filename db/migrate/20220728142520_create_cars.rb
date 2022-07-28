class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.float :price
      t.string :make
      t.string :model
      t.integer :year
      t.integer :number_of_wheels
      t.float :mpg

      t.timestamps
    end
  end
end
