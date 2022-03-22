module Surveys
  class QuestionPolicy < ApplicationPolicy
    class Scope < Scope
      # NOTE: Be explicit about which records you allow access to!
      def resolve
        scope.all
      end
    end

    def create?
      true
    end

    def edit?
      true
    end

    def update?
      edit?
    end
  end
end