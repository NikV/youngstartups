class ProjectPolicy < ApplicationPolicy
  attr_reader :user, :project

  def initialize(user, project)
    @user = user
    @project = project
  end
  
  def new?
    project.user == user
  end

  def create?
    new? 
  end

  def update?
    new?
  end

  def edit?
    new?
  end

  def destroy?
    new?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
