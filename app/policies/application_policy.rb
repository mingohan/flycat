# frozen_string_literal: true

class ApplicationPolicy 
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end

    private
    
    def internal_users
      user && user.role.in?(["admin", "staff"])
    end

    def company 
      user && user.role == "vendor"
    end

    def employee
      user && user.role == "user"
    end
end
