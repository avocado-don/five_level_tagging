class TagsController < ApplicationController

  # application_controller.rb (def branch_of_search) ：List, Item, Tagモデルのキーワード検索。params[:model]の値により条件分岐。
  # tag.rb (has_one :latest_item_tag) ：タグを含むアイテムの最新更新日時1件ずつを取得する(N+1を回避)。
  def index
    if search_params[:word].present? && search_params[:word] != ""
      params[:model] = "Tag"
      params[:condition] = "OR"
      branch_of_search(search_params)
    else
      @q = Tag.distinct.ransack(params[:q])
    end
    @q.sorts = "latest_item_tag_updated_at DESC" if @q.sorts.empty?
    @tags = @q.result
    @tag_groups = @tags.each_slice(4)
  end

  def show
    @tag = Tag.find(params[:id])
    if params[:list_id].present? && params[:list_id] != ""
      @q = @tag.items.where(list_id: params[:list_id]).ransack(params[:q])
    else
      @q = @tag.items.ransack(params[:q])
    end
    @q.sorts = "updated_at DESC" if @q.sorts.empty?
    @items = @q.result.distinct.includes(:list, :tags)
  end

  def search
    return nil if params[:keyword] == ""
    tag = Tag.search_records(params[:keyword])
    render json:{ keyword: tag }
  end
end
