module ItemsHelper
  def add_or_remove_image_from_cart_button(item, classes)
    return if PurchasedItem.user_purchased_item?(current_user, item)

    if @cart.has_item?(item)
      link_to('Remove From Cart', remove_item_cart_path(@cart, item_id: item.id), class: classes)
    else
      link_to('Add to Cart', add_item_cart_path(@cart, item_id: item.id), class: classes)
    end
  end
end
