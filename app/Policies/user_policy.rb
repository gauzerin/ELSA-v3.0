class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

   def trips?
    true  # Only user creator can update it
  end
end
