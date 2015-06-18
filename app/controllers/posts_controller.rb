class PostsController < ApplicationController
  def create
  	@post = Post.create( :user_id => post_params[:user_id], :message => post_params[:message])
  	redirect_to "/users/#{post_params[:user_id]}";
  end

  def post_params
    params.require(:post).permit(:user_id, :message)
  end
end
