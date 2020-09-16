module Types
  class QueryType < Types::BaseObject
    field :all_items, [Types::ItemType], null: false

    def all_items
      Item.all.limit(30)
    end
  end
end
