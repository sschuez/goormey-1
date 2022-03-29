# module Surveys
  class SubmissionPolicy < ApplicationPolicy
    # class Scope < Scope
      # NOTE: Be explicit about which records you allow access to!
      # def resolve
        # scope.all
      # end
    # end

    def show?
      true
    end
    
    def new?
      show?
    end

    def create?
      show?
    end

    def update?
      show?  
    end

    def destroy?
      user.admin if user
    end
  end
# end