class Mutations::CreateCategory < Mutations::BaseMutation
  argument :title, String, required: true

  field :category, Types::CategoryType, null: false
  field :errors, [String], null: false 

  def resolve(title: )
    category = Category.new(title: title)
        if category.save
      {
        category: category,
        errors: []
      }
    else
      {
        user: nil,
        errors: category.errors.full_messages
      }
    end
  end
end
