class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user # this code checks if the user who is traing to do something is the user who created it (erog has permission to perofrm the action)
  end

  def edit?
    record.user == user # this code checks if the user who is traing to do something is the user who created it (erog has permission to perofrm the action)
  end

  def destroy?
    record.user == user # this code checks if the user who is traing to do something is the user who created it (erog has permission to perofrm the action)
  end
end
