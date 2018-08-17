class Api::SearchesController < ApplicationController

  # no render methods applied

  def show
    # not dry
    name = search_params[:name].downcase
    place = search_params[:place]

    biz_results = Business.where('LOWER(name) like ?', "#{name}%")
    # debugger
    if biz_results.empty?
      biz_results = [];
      category_results = find_by_category(name)
    else
      #assume has categories hmm
      tag = biz_results.first.categories.first.category.downcase
      # debugger
      category_results = find_by_category(tag)
    end

    @search_results = (biz_results + category_results).uniq
    render 'api/searches/show'
  end

  private

  def search_params
    params.require(:search)
    .permit(:name, :place)
  end

  def find_by_category(name)
    category_results = []
    categories = Category
      .includes(:business)
      .where('LOWER(categories.category) like ?', name )

    categories.each { |tag| category_results.push(tag.business)}
    category_results
  end
end
