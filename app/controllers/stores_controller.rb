class StoresController < ApplicationController
  def show
    @store = Store.friendly.find(params[:id])
  end

  def edit
    @store = Store.friendly.find(params[:id])
  end

  def update
    @store = Store.friendly.find(params[:id])
    if @store.update(store_params)
      redirect_to @store, notice: "Store was updated successfully."
    else
      render :edit, error: "Error updating store. Please try again."
    end
  end

  def new
    @store = Store.new
  end

  def create
    user = User.friendly.find(params[:user_id])
    if @store = user.stores.create(store_params)
      redirect_to @store, notice: "Store was created successfully."
    else
      render :new, error: "Error creating store. Please try again."
    end
  end


  def store_params
    params.require(:store).permit(:name, :description, :storefront)
  end
end