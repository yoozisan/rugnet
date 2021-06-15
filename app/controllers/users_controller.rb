class UsersController < ApplicationController
  # def index
    # @user = User.all
    # relationships = Relationship.where(follower_id: current_user.id).pluck(:followed_id)
    # @followed_users = User.find(relationships)
    # @followed_users = Kaminari.paginate_array(@followed_users).page(params[:page]).per(10)
  # end

  def show
     @user = User.find(params[:id])
     @users = @user.posts.all
  end
end
