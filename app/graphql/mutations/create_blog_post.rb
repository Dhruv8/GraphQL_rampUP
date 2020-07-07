class Mutations::CreateBlogPost < Mutations::BaseMutation
  argument :title, String, required: true

  field :blogPost, Types::BlogPostType, null: false
  field :errors, [String], null: false 

  def resolve(title: )
    blog = BlogPost.new(title: title)
        if blog.save
      {
        blogPost: blog,
        errors: []
      }
    else
      {
        user: nil,
        errors: blog.errors.full_messages
      }
    end
  end
end
