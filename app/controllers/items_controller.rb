class ItemsController < ApplicationController
  def new
    @store = Store.friendly.find(params[:store_id])
    @item = Item.new
  end

  def show
    @item = Item.friendly.find(params[:id])
    @store = @item.store
  end

  def create
    store = Store.friendly.find(params[:store_id])
    if @item = store.items.create(item_params)
      redirect_to @item, notice: "Store was created successfully."
    else
      render :new, error: "Error creating store. Please try again."
    end
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :image)
  end
end
