class CreateCar < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
    end
  end
end
