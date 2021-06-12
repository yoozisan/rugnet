class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to new_post_path
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
  end

end
