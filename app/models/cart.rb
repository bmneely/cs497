# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_items

  default_scope -> { includes(:cart_items) }
  validates_presence_of :user

  def empty?
    cart_items.empty?
  end

  def total
    cart_items.map(&:price).inject(:+)
  end

  def has_item?(item)
    cart_items.where(item: item).exists?
  end

  def count
    cart_items.count
  end

  def buy!
    return if empty?

    cart_items.each do |cart_item|
      PurchasedItem.create!(user: user, item: cart_item.item, price: cart_item.price)
      puts "$$: User #{ user.id } purchased item #{ cart_item.id } for #{ cart_item.price }" unless Rails.env.test?
      cart_item.destroy
    end
  end
end
