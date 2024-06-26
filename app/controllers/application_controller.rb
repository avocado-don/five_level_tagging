class ApplicationController < ActionController::Base
  before_action :basic_auth unless Rails.env.test?
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:real_name, :user_name, :contact, :profile])
    devise_parameter_sanitizer.permit(:account_update, keys: [:real_name, :user_name, :contact, :profile])
  end

  def search_params
    params.permit([q: :s], :word, :model, :condition, :commit)
  end

  # list.rb, item.rb, tag.rb (def self.search_records) ：List, Item, Tagモデルのキーワード検索。params[:model]の値により条件分岐。
  def keyword_search(search_params)
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
  end
end
