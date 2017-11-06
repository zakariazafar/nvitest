class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :publisher
      t.date :published_on
      t.float :unit_price

      t.timestamps
    end
  end
end
