class TimelinePostsController < ApplicationController

  def create
    @post = current_user.timeline_posts.build(permitted_params)
    authorize @post
    if @post.save
      redirect_to directory_index_path
    else
      flash[:error] = "There was an error. Please try again"
      redirect_to directory_index_path
    end
  end

  def update
    @post = TimelinePost.find(params[:id])
    authorize @post
  end

private
  def permitted_params
    params.require(:timeline_post).permit(:content, :tags)
  end
end
