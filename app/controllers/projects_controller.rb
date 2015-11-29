class ProjectsController < ApplicationController
  def new
    @project = current_user.projects.build
  end
  
  def create
    @project = current_user.projects.build(permitted_params)
    if @project.save
      flash[:notice] = "Project created"
      redirect_to user_path(current_user)
    else
      flash[:error] = "Please try again"
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(permitted_params)
      flash[:notice] = "Project updated"
      redirect_to user_path(current_user)
    else
      flash[:error] = "Please try again"
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to user_path(current_user)
  end

private
  def permitted_params
    params.require(:project).permit(:name, :description, :url)
  end
end
