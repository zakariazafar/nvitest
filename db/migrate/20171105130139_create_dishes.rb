class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.integer :menus_appeared
      t.integer :times_appeared
      t.integer :first_appeared
      t.integer :last_appeared
      t.float :lowest_price
      t.float :highest_price
    end
  end
end
