class Blog::Index
  include Interactor

  def call
    context.blogs = Blog.all
  end
end
