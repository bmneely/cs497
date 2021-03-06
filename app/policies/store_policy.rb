class StorePolicy < ApplicationPolicy
  attr_reader :user, :store

  def initialize(user, store)
    @user = user
    @store = store
  end

  def update?
    user && (user.admin? || store.user == user)
  end

  def edit?
    update?
  end

  def destroy?
    user && (user.admin? || store.user == user)
  end
end
