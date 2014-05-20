module BlogPostsHelper

	def update_num_comments(blogpost_id)

		blog_post = BlogPost.find(blogpost_id)

		num_comments = blog_post.comments.count

		blog_post.num_comments = num_comments
		blog_post.save

	end
end
