class Blog::Edit
  include Interactor

  def call
    blog = Blog.find(context.id)
    context.blog = blog.update(context.params)
  end
end
