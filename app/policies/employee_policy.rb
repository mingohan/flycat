class EmployeePolicy < ApplicationPolicy
  def index?
    internal_users
  end

  def new?
    create?
  end

  def create?
    company
  end 

  def edit?
    update?
  end

  def update?
    interviewee || company
  end

  def destroy?
    company
  end
  
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
