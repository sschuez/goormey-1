# module Surveys
  class QuestionPolicy < ApplicationPolicy
    class Scope < Scope
      # NOTE: Be explicit about which records you allow access to!
      def resolve
        if user.admin?
          scope.all
        end
      end
    end

    def show?
      true
    end
    
    def create?
      user.admin
    end

    def edit?
      create?
    end

    def update?
      create?
    end

    def destroy?
      create?
    end
  end
# end