class CommentsController < ApplicationController
  before_action :set_post, only: %i(create edit update destroy)

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(post_params)
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to post_path(@post), notice: '投稿できませんでした' }
      end
    end
  end

  def edit
    @comment = @post.comments.find(params[:id])
    respond_to do |format|
      flash.now[:notice] = 'コメント編集中'
      format.js{ render :edit }
    end
  end

  def update
    @comment = @post.comments.find(params[:id])
    respond_to do |format|
      if @comment.update(post_params)
        flash.now[:notice] = 'コメントが編集されました'
        format.js { render :index}
      else
        flash.now[:notice] = 'コメントの編集に失敗しました'
        format.js {render :edit}
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      flash.now[:notice] = "コメントが削除されました"
      format.js { render :index }
    end
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end

  def post_params
    params.require(:comment).permit(:post_id, :content, :image, :image_cache).merge(user_id: current_user.id)
  end
end
