class StorePolicy < ApplicationPolicy
  attr_reader :user, :store

  def initialize(user, store)
    @user = user
    @store = store
  end

  def update?
    user.admin? || store.user == user
  end

  def edit?
    update?
  end

  def destroy?
    user.admin? || store.user == user
  end
end
