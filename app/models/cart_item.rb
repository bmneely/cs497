# == Schema Information
#
# Table name: cart_items
#
#  id         :integer          not null, primary key
#  cart_id    :integer
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CartItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :item

  validates_presence_of :cart_id, :item_id

  def price
    item.price
  end
end
