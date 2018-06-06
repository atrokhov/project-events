class CommentsController < ApplicationController

  def create
  	@item = Item.find(params[:item_id])
  	@comment = @item.comments.create(comments_params)

  	respond_to do |format|
  		format.html { redirect_to @item }
  		format.js {}
  	end
  end

  private

  def comments_params
  	params.require(:comment).permit(:body, :user_id)
  end

end
