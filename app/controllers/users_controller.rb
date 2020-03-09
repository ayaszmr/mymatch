class UsersController < ApplicationController
  def inex
    @users = User.where.not(id: current_user.id)
  end
  
  def show
    @user = User.find_by(id: params[:id])
  end
end
