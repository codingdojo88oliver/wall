class CommentsController < ApplicationController
  def create
	@data = Comment.create(:user_id => comment_params[:user_id], :post_id => comment_params[:post_id], :comment => comment_params[:comment] )
	redirect_to "/users/#{comment_params[:user_id]}"
  end

  private
    def comment_params
    	params.require(:comment).permit(:user_id, :post_id, :comment)
    end
end
