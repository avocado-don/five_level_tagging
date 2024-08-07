class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_list
  before_action :set_item, only: [:edit, :update, :destroy, :sort]

  def new
    @item_form = ItemForm.new
  end

  def create
    @item_form = ItemForm.new(item_form_params)
    if @item_form.valid?
      @item_form.save_item_form
      renumber_row_order(@list)
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
      @item_form.update_item_form(item_form_params, @item)
      redirect_to list_path(@list.id)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy if current_user.id == @list.user_id
    redirect_to list_path(@list.id)
  end

  def sort
    if current_user.id == @list.user_id
      @item.assign_attributes(sort_params)
      @item.save(touch: false)
      2.times { renumber_row_order(@list) }
    end
  end

  private
  def item_form_params
    params.require(:item_form).permit(:item_name, :description, images: [], tag_names: [], scores: []).merge(list_id: params[:list_id])
  end

  def sort_params
    params.require(:item).permit(:row_order_position)
  end

  def renumber_row_order(list)
    List.no_touching do
      list.items.rank(:row_order).each_with_index do |item, i|
        item.assign_attributes(row_order: i+1)
        item.save(touch: false)
      end
    end
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
