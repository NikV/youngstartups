class DirectoryController < ApplicationController
  def index
    @users = User.where(accepted: true).order(name: :asc)
  end
end
