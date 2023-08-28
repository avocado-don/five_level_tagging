class UsersController < ApplicationController

  # user.rb (has_one :latest_list) ：各ユーザーが更新した最新のリスト1件ずつを取得する(N+1を回避)。
  def index
    @q = User.includes(:latest_list).ransack(params[:q])
    @q.sorts = "latest_list_updated_at DESC" if @q.sorts.empty?
    @users = @q.result
  end

  def show
    @user = User.find(params[:id])
    @q = @user.lists.ransack(params[:q])
    @q.sorts = "updated_at DESC" if @q.sorts.empty?
    @lists = @q.result
  end
end
