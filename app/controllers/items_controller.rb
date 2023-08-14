class ItemsController < ApplicationController
  before_action :set_list
  before_action :set_item, only: [:edit, :update, :destroy]

  def new
    @item_form = ItemForm.new
    @item_form.tag_names = ""
    @item_form.scores = ""
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
    @item_form.tag_names = @item.tags.pluck(:tag_name)
    @item_form.scores = @item.item_tags.pluck(:score)
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
    params.require(:item_form).permit(:item_name, :description, images: [], tag_names: [], scores: []).merge(list_id: params[:list_id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
