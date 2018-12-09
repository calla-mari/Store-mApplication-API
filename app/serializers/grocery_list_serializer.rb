class GroceryListSerializer < ActiveModel::Serializer
  attributes :id,:store, :checkbox, :department, :item, :amount, :editable

  def editable
    scope == object.user
  end
end
