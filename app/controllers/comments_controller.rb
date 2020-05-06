class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    if @comement.save
      redirect_back(fallback_location: items_show_path)
    else
      redirect_back(fallback_location: items_show_path)
    end
  end

  private
    def comement_params
    params.require(:comment).permit(:comement) #.merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
