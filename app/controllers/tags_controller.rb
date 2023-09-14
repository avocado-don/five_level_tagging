class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    if params[:list_id] != ""
      @q = @tag.items.where(list_id: params[:list_id]).ransack(params[:q])
    else
      @q = @tag.items.ransack(params[:q])
    end
    @q.sorts = "updated_at DESC" if @q.sorts.empty?
    @items = @q.result.distinct.includes(:list, :tags)
  end
end
