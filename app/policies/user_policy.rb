class UserPolicy < ApplicationPolicy
  attr_reader :user, :user_model

  def initialize(user, user_model)
    @user = user
    @user_model = user_model
  end
  
  def new?
    true
  end

  def create?
    new?
  end

  def update?
    user_model.id == user.id
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
