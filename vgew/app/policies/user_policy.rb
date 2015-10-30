class UserPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def update?
    user && (user.admin? || user == record)
  end

  def edit?
    update?
  end

  def archive?
    destroy?
  end

  def destroy?
    user && user.admin?
  end
end
