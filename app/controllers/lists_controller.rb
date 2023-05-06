class ListsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_list, only: [:show, :edit, :update, :destroy]

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
      redirect_to list_path(@list.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
    redirect_to root_path unless current_user.id == @list.user_id
  end

  def update
    if @list.update(list_params)
      redirect_to list_path(@list.id)
    else
      render :edit
    end
  end

  def destroy
    @list.destroy if current_user.id == @list.user_id
    redirect_to root_path
  end

  private
  def list_params
    params.require(:list).permit(:title, :concept, :score_rule).merge(user_id: current_user.id)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
