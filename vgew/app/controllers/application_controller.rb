class ApplicationController < ActionController::Base
  before_action :set_cart, if: :user_signed_in?

  include Pundit
  protect_from_forgery with: :exception

  def set_cart
    @cart = current_user.cart || current_user.create_cart!
  end
end
