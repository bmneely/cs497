class PostsController < ApplicationController
  def new
    raise
    @post = Post.new
  end

  def create
    blog = Blog.friendly.find(params[:store_id])
    if @store = user.stores.create!(store_params)
      redirect_to @store, notice: "Store was created successfully."
    else
      render :new, error: "Error creating store. Please try again."
    end
  end
end
