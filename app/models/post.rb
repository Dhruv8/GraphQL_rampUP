class Post < ApplicationRecord
	has_many :sections, dependent: :destroy
	belongs_to :category
	belongs_to :blog_post
end
