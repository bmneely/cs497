class BlogsController < ApplicationController
  def show
    @store = Store.friendly.find(params[:store_id])
    @blog = @store.blog
  end
end
