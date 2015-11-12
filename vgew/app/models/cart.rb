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
end
