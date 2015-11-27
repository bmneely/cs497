class PurchasedItemPolicy < ApplicationPolicy

  def show?
    belongs_to_user? || is_admin?
  end

  class Scope < Struct.new(:user, :scope)
    def resolve
      scope.where(user: user)
    end
  end
end
