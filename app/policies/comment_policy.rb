class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def create?
    user
  end

  def new?
    create?
  end

  def update?
    user.admin? || comment.user == user
  end

  def edit?
    update?
  end

  def destroy?
    user.admin? || comment.user == user
  end
end
