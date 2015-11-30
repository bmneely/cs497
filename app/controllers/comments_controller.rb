class CommentsController < ApplicationController
  def create
    @item = Item.friendly.find(params[:item_id])
    @comment = @item.comments.new(comment_params)
    @comment.user = current_user
    @new_comment = Comment.new

    if @comment.save
      flash.now[:notice] = "Comment saved successfully."
    else
      flash.now[:error] = "Comment failed to save."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
    @item = Item.friendly.find(params[:item_id])
    @comment = @item.comments.find(params[:id])

    if @comment.destroy
      flash.now[:notice] = "Comment was deleted."
    else
      flash.now[:error] = "Comment couldn't be deleted. Try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
