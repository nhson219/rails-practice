class Blog::Add
  include Interactor

  def call
    context.blog = Blog.create(context.params)
  end
end
