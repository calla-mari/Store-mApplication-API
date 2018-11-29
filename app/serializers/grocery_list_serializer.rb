class GroceryListSerializer < ActiveModel::Serializer
  attributes :id, :checkbox, :item, :amount

  def editable
    scope == object.user
  end
end
