class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def initialize(user,comment)
    @user = user
    @comment = comment
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    true
  end

  def update?
    user == comment.author
  end


  def edit?
    update?
  end


  def destroy?
    update?
  end
end
