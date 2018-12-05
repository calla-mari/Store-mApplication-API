class AddStoreToGroceryList < ActiveRecord::Migration[5.2]
  def change
    add_column :grocery_lists, :store, :string
  end
end
