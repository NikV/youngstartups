class SessionsController < ApplicationController

  def new
  end

  # This is pants code, but i'll refactor later
  def create
    if @user = User.find_by_email(params[:user][:email])
      if @user.valid_password?(params[:user][:password]) && @user.accepted?
        login(params[:user][:email], params[:user][:password])
        flash[:notice] = "Login Successful"
        redirect_to directory_index_path
      else
        flash[:notice] = "You're application is pending approval"
        redirect_to root_path
      end
    else
      flash.now[:alert] = 'Login failed'
      render :new
    end
  end

  def destroy
    logout
    redirect_to(root_path, notice: 'Logged out!')
  end

end
