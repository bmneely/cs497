class CartController < ApplicationController
  def show
  end

  def add_item
    item = Item.find(params[:item_id])
    if @cart.has_item?(item)
      flash[:notice] = "That item is already in your cart."
    else
      CartItem.create!(cart: @cart, item: item)
      flash[:notice] = "#{ item.name } was successfully added to your cart."
    end

    redirect_to item
  end

  def remove_item
    item = Item.find(params[:item_id])
    cart_item = @cart.cart_items.where(item: item).first

    if cart_item && cart_item.destroy
      flash[:notice] = "#{ item.name } was successfully removed from your cart."
    else
      flash[:warning] = "We're sorry, something went wrong there."
    end

    redirect_to @cart
  end
end
