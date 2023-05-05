class ListsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @q = List.ransack(params[:q])
    @lists = @q.result.order("created_at DESC")
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def list_params
    params.require(:list).permit(:title, :concept, :score_rule).merge(user_id: current_user.id)
  end
end
