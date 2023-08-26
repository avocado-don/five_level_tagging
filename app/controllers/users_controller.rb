class UsersController < ApplicationController
  def index
    @q = User.joins(:lists).ransack(params[:q])
    @users = @q.result.includes(:lists).order("lists.updated_at DESC")
  end

  def show
    @user = User.find(params[:id])
    @q = @user.lists.ransack(params[:q])
    @lists = @q.result.includes(:user).order("updated_at DESC")
  end
end
