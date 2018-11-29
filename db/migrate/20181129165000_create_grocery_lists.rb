class CreateGroceryLists < ActiveRecord::Migration[5.2]
  def change
    create_table :grocery_lists do |t|
      t.boolean :checkbox
      t.string :item
      t.integer :amount

      t.timestamps
    end
  end
end
