class CartItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :item

  validates_presence_of :cart_id, :item_id

  def price
    item.price
  end
end
