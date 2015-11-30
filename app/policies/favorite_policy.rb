class FavoritePolicy < ApplicationPolicy
  attr_reader :user, :favorite

  def initialize(user, favorite)
    @user = user
    @favorite = favorite
  end

  def create?
    user
  end

  def new?
    create?
  end

  def destroy?
    user && (user.admin? || favorite.user == user)
  end
end
