class SearchesController < ApplicationController

  # application_controller.rb (def keyword_search) ：List, Item, Tagモデルのキーワード検索。params[:model]の値により条件分岐。
  def search
    if search_params[:word].present? && search_params[:word] != ""
      keyword_search(search_params)
      @q.sorts = "updated_at DESC" if @q.sorts.empty?
      if search_params[:model] == "List"
        @lists = @q.result.includes(:user)
      elsif search_params[:model] == "Item"
        @items = @q.result.preload(:list, :tags)
      end
    end
  end
end
