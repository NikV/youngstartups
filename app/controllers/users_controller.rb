class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def edit
    @user = User.friendly.find(params[:id])
  end

  def create
    @user = User.new(permitted_params)
    if @user.save
      flash[:notice] = "Your request to join has been received"
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @user = User.friendly.find(params[:id])
    if @user.update_attributes(permitted_params)
      flash[:notice] = "Your profile has been updated"
      redirect_to edit_user_path(@user)
    else
      render :edit
    end
  end

  def show
    @user = User.friendly.find(params[:id])
  end

private
  def permitted_params
    params.require(:user).permit(:email, :password, :date_of_birth, 
                                 :will_contribute, :looking_for, :referred_from, 
                                 :bio, :tagline, :name)
  end
end
