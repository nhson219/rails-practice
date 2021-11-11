class BlogController < ApplicationController
  def index
    @interactor = Blog::Index.call
  end

  def new
    @blog = Blog.new
  end

  def create
    interactor = Blog::Add.call(params: blog_params)
    @blog = interactor.blog
    render :new unless @blog.valid?
  end

  def edit
    interactor = Blog::Show.call(params)
    @blog = interactor.blog
  end

  def update
    interactor = Blog::Edit.call(id: params[:id], params: blog_params)
    @blog = interactor
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :description, :content)
  end
end
