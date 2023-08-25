class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @q = @user.lists.ransack(params[:q])
    @lists = @q.result.includes(:user).order("updated_at DESC")
  end
end
