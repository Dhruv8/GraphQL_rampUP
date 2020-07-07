module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :body, String, null: true
    field :category_id, Integer, null: true
    field :blog_post_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :sections, [Types::SectionType], null: true
    field :category, [Types::CategoryType], null: false

  end
end
