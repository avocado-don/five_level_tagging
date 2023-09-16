class SearchesController < ApplicationController
  def search
    branch_of_search(search_params) if search_params[:word].present? && search_params[:word] != ""

    @q.sorts = "updated_at DESC" if @q.sorts.empty?
    if search_params[:model] == "List"
      @lists = @q.result.preload(:user)
    elsif search_params[:model] == "Item"
      @items = @q.result.preload(:list, :tags)
    end
  end
end
