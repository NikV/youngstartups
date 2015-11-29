class DirectoryController < ApplicationController
  def index
    @users = User.where(accepted: true).order(name: :asc)
    @new_timeline_post = current_user.timeline_posts.build
    @timeline_posts = TimelinePost.all.order(created_at: :desc)
  end
end
