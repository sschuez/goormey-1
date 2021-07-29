class RecipePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true  # Anyone can view a recipe
  end

  def create?
    true  # Anyone can create a recipe
  end

  def update?
    record.user == user  # Only recipe creator can update it
  end

  def destroy?
    record.user == user  # Only recipe creator can update it
  end
end
