class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def show?
    true  # Anyone can view a comment
  end
  
  def create?
    true  # Anyone can create a comment
  end
  
  def update?
    record.user == user || user.admin if user # Only comment creator or admin can update it
  end
  
  def destroy?
    record.user == user || user.admin if user # Only comment creator or admin can destroy it
  end
end
