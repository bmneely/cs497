class ItemPolicy < ApplicationPolicy
  attr_reader :user, :item

  def initialize(user, item)
    @user = user
    @item = item
  end

  def update?
    user && (user.admin? || item.store.user == user)
  end

  def edit?
    update?
  end

  def destroy?
    user && (user.admin? || item.store.user == user)
  end
end
