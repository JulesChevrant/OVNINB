class OvniPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create?
      true
    end

    def new?
      true
    end

    def show?
      true
    end

    def index?
      true
    end
  end
end
