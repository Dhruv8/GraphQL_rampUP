2.times do
 blog_post = BlogPost.create(title: Faker::Company.name)
 category = Category.create(title: Faker::Lorem.sentence(word_count: 3))
 	3.times do
 		@post = Post.create(title: Faker::Lorem.sentence(word_count: 5) , body: Faker::Lorem.sentence(word_count: 10), category_id: category.id, blog_post_id: blog_post.id )
 	end
 	section = Section.create(name: Faker::Lorem.sentence(word_count: 2), post_id: @post.id)
end
