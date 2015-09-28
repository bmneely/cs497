class UserPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def update?
    user.admin? || user == record
  end

  def edit?
    update?
  end

  def archive?
    destroy?
  end

  def destroy?
    user.admin?
  end
end
