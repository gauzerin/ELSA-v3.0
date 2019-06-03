class ReviewPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
    # make it so only users who have
    # booked the hostel can leave 1 review
  end

  def create?
    new?
  end

end
