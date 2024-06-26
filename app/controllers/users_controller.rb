class UsersController < ApplicationController

  # user.rb (has_one :latest_list) ：各ユーザーが更新した最新のリスト1件ずつを取得する(N+1を回避)。
  def index
    @q = User.ransack(params[:q])
    @q.sorts = "latest_list_updated_at DESC" if @q.sorts.empty?
    @users = @q.result.includes(:latest_list)
  end

  def show
    @user = User.find(params[:id])
    @q = @user.lists.ransack(params[:q])
    @q.sorts = "updated_at DESC" if @q.sorts.empty?
    @lists = @q.result
  end
end
