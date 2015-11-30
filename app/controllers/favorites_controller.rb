class FavoritesController < ApplicationController

  def create
    store = Store.friendly.find(params[:store_id])
    favorite = current_user.favorites.build(store: store)

    if favorite.save
      flash[:notice] = "#{store.name} favorited."
    else
      flash[:error] = "Favoriting failed."
    end

    redirect_to :back
  end

  def destroy
    store = Store.friendly.find(params[:store_id])
    favorite = current_user.favorites.find(params[:id])

    if favorite.destroy
      flash[:notice] = "#{store.name} unfavorited."
    else
      flash[:error] = "Unfavoriting failed."
    end

    redirect_to :back
  end
end
