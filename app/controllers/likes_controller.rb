class LikesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])
    @like = Like.new(user: @user, post: @post)
    redirect_to post_path(@post) if @like.save
  end
end
