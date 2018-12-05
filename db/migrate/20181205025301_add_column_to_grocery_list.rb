class AddColumnToGroceryList < ActiveRecord::Migration[5.2]
  def change
    add_column :grocery_lists, :department, :string
  end
end
