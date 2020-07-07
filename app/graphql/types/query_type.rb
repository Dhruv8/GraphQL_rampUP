module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    #All Posts
    field :posts, [Types::PostType], null: false

    def posts
      Post.all
    end

    #Post with id

     field :post, Types::PostType, null: false do
      argument :id, ID, required: true
    end

    def post(id:)
      Post.find(id)
    end

    #All Blogs

    field :blogPosts, [Types::BlogPostType], null: false

    def blogPosts
      BlogPost.all
    end

    # BlogPost with id

    field :blogPost, Types::BlogPostType, null: false do
      argument :id, ID, required: true
    end

    def blogPost(id:)
      BlogPost.find(id)
    end

    #All Categories

    field :categories, [Types::CategoryType], null: false

    def categories
      Category.all
    end

    # Category with id

    field :category, Types::CategoryType, null: false do
      argument :id, ID, required: true
    end

    def category(id:)
      Category.find(id)
    end

    #Sections

    field :sections, [Types::SectionType], null: false

    def sections
      Section.all
    end

    # Section with id

    field :section, Types::SectionType, null: false do
      argument :id, ID, required: true
    end

    def section(id:)
      Section.find(id)
    end

  end
end
