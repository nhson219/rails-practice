class Blog::Show
  include Interactor

  def call
    context.blog = Blog.find(context.id)
  end
end
