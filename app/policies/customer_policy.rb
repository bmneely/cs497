class CustomerPolicy < ApplicationPolicy
  def new?
    create?
  end

  def create?
    user
  end

  def edit?
    update?
  end

  def update?
    belongs_to_user? || is_admin?
  end
end
