class BlogPolicy < ApplicationPolicy
  attr_reader :user, :blog

  def initialize(user, blog)
    @user = user
    @blog = blog
  end

  def update?
    user && (admin? || blog.store.user == user)
  end
end
