class CartPolicy < ApplicationPolicy
  attr_reader :user, :cart

  def initialize(user, cart)
    @user = user
    @cart = cart
  end

  def add_item?
    user && (admin? || cart.user == user)
  end

  def remove_item?
    add_item?
  end
end
