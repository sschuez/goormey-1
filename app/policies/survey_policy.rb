class SurveyPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      if user.admin?
        scope.all
      end
    end
  end

  def show?
    user.admin
  end
  
  def create?
    show?
  end

  def update?
    create?
  end

  def destroy?
    create?
  end
end
