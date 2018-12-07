class GroceryListSerializer < ActiveModel::Serializer
  attributes :id,:store, :checkbox, :department, :item, :amount

  def editable
    scope == object.user
  end
end
