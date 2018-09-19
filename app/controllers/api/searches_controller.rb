class Api::SearchesController < ApplicationController

  # no render methods applied

  def show
    name = search_params[:name].downcase
    place = search_params[:place]
    if name == ""
      @search_results = []
      render 'api/searches/show'
    else
      biz_results = Business.includes(:images, :categories)
        .where('LOWER(name) like ?', "#{name}%")
        .references(:images, :categories)
        # debugger
      if biz_results.empty?
        biz_results = [];
        category_results = find_by_category(name)
      else
        tags = biz_results.first.categories.pluck(:category)
        category_results = []
        tags.each do |tag|
          category_results.concat(find_by_category(tag.downcase))
        end
      end

      @search_results = (biz_results + category_results).uniq
      render 'api/searches/show'
    end
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
      .where('LOWER(categories.category) like ?', "#{name}%")

    categories.each { |tag| category_results.push(tag.business)}
    category_results
  end
end
