class LikePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true  # Anyone can like
  end

  def destroy?
    true
  end
end
