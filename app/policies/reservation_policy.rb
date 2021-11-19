class ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user:user)
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def index?
    true
  end
end
