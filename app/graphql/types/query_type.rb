module Types
  class QueryType < Types::BaseObject
    field :all_items, [Types::ItemType], null: false

    def all_items
      Item.all
    end
  end
end
