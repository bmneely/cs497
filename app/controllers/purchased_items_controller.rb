class PurchasedItemsController < ApplicationController
  def index
    @purchased_items = policy_scope(PurchasedItem).paginate(page: params[:page], per_page: 20)
  end

  def show
    authorize @purchased_item
  end
end
