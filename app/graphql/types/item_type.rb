module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :article_id, String, null: true
    field :deleted, Boolean, null: true
    field :type, String, null: true
    field :by, String, null: true
    field :time, String, null: true
    field :text, String, null: true
    field :dead, Boolean, null: true
    field :parent, String, null: true
    field :poll, String, null: true
    field :kids, Integer, null: true
    field :url, String, null: true
    field :score, Integer, null: true
    field :title, String, null: true
    field :parts, Integer, null: true
    field :descendants, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
