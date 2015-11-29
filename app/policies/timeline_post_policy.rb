class TimelinePostPolicy < ApplicationPolicy
  attr_reader :user, :timeline_post

  def initialize(user, timeline_post)
    @user = user
    @timeline_post = timeline_post
  end
  
  def new?
    timeline_post.user == user
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
