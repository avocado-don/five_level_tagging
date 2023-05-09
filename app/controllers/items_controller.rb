class ItemsController < ApplicationController
  before_action :set_list
  before_action :set_item, only: [:edit, :update, :destroy]

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

  def edit
    redirect_to list_path(@list.id) unless current_user.id == @list.user_id
    @item_form = ItemForm.new(@item.attributes)
  end

  def update
    @item_form = ItemForm.new(item_form_params)

    if @item_form.valid?
      @item_form.update(item_form_params, @item)
      redirect_to list_path(@list.id)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy if current_user.id == @list.user_id
    redirect_to list_path(@list.id)
  end

  private
  def item_form_params
    params.require(:item_form).permit(:item_name, :description, images: []).merge(list_id: params[:list_id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
