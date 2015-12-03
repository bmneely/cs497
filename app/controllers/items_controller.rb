class ItemsController < ApplicationController
  def index
    @items = Item.paginate(:page => params[:page])
  end

  def new
    @store = Store.friendly.find(params[:store_id])
    @item = @store.items.new
  end

  def show
    @item = Item.friendly.find(params[:id])
    @store = @item.store
  end

  def edit
    @item = Item.friendly.find(params[:id])
  end

  def update
    @item = Item.friendly.find(params[:id])
    if @item.update(item_params)
      redirect_to @item, notice: "Item was updated successfully."
    else
      render :edit, error: "Error updating item. Please try again."
    end
  end

  def create
    store = Store.friendly.find(params[:store_id])
    if @item = store.items.create(item_params)
      redirect_to @item, notice: "Store was created successfully."
    else
      render :new, error: "Error creating store. Please try again."
    end
  end

  def destroy
    item = Item.friendly.find(params[:id])
    @store = item.store
    if item.destroy
      redirect_to @store, notice: "#{item.name} was destroyed successfully."
    else
      render item, error: "Error deleting item. Please try again."
    end
  end

  def archive
    item = Item.friendly.find(params[:id])
    @store = item.store
    if item.archive!
      redirect_to @store, notice: "#{item.name} was archived successfully."
    else
      render item, error: "Error archiving item. Please try again."
    end
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :image)
  end
end
