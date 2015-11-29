class SessionsController < ApplicationController

  def new
  end

  def create
    if @user = login(params[:user][:email], params[:user][:password])
      flash[:notice] = "Login Successful"
      redirect_to directory_index_path
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
