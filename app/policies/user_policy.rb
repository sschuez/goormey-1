class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
    if user.admin?
      scope.all
    else
      scope.where(user: user)
    end
    end
  end

  def show?
    record == user || user.admin
  end
  
  def update?
    record == user
  end
  
  def destroy?
    record == user || user.admin
  end
  
  def impersonate?
    user.admin
  end
  
  def stop_impersonating?
    true
  end
end
