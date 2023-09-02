class SearchesController < ApplicationController
  def search
    branch_of_search(search_params) if search_params[:word].present? && search_params[:word] != ""
  end

  private
  def search_params
    params.permit([q: :s], :word, :model, :condition, :commit)
  end

  # list.rb, item.rb (def self.search_records) ：ListモデルとItemモデルのキーワード検索。params[:model]の値により条件分岐。
  def branch_of_search(search_params)
    keywords = search_params[:word].squish.split(" ")
    model = search_params[:model].constantize
    records = model.none

    if search_params[:condition] == "AND"
      keywords.each do |keyword|
        if keyword == keywords[0]
          records = model.search_records(keyword)
        else
          records = records.merge(model.search_records(keyword))
        end
      end
    elsif search_params[:condition] == "OR"
      keywords.each { |keyword| records = records.or(model.search_records(keyword)) }
    end

    @q = records.distinct.ransack(params[:q])
    @q.sorts = "updated_at DESC" if @q.sorts.empty?

    @lists = @q.result.preload(:user) if model == List
    @items = @q.result.preload(:list, :tags) if model == Item
  end
end
