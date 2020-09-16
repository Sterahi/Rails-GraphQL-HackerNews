module Types
  class QueryType < Types::BaseObject
    field :all_items, [Types::ItemType], null: false
    field :get_page, [Types::ItemType], null: false do
      description "get selected page"
      argument :page, Integer, required: true
    end

    def all_items
      Item.all.limit(30).where.not(url: nil)
    end
    def get_page(page:)
      puts 'getpage'
      Item.all.limit(30).offset(page * 30)
    end
  end
end
