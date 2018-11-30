class AddUserToGroceryLists < ActiveRecord::Migration[5.2]
  def change
    add_reference :grocery_lists, :user, foreign_key: true
  end
end
