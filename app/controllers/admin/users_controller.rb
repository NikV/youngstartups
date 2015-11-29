class Admin::UsersController < ApplicationController
  before_action :ensure_admin

  def index
    @users = User.all
  end

  def accept_invite
    @user = User.find(params[:id])
    if @user.update_attribute('accepted', true)
      flash[:notice] = "#{@user.name} has now been accepted"
      # Send an email here
    else
      flash[:error] = "Invite failed"
    end
    redirect_to admin_users_path
  end

private
  def ensure_admin
    redirect_to root_path unless current_user.admin?
  end
end
