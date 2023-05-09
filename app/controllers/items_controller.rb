class ItemsController < ApplicationController
  before_action :set_list

  def new
    @item_form = ItemForm.new
  end

  def create
    @item_form = ItemForm.new(item_form_params)
    if @item_form.valid?
      @item_form.save
      redirect_to list_path(@list.id)
    else
      render :new
    end
  end

  private
  def item_form_params
    params.require(:item_form).permit(:item_name, :description, images: []).merge(list_id: params[:list_id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end
