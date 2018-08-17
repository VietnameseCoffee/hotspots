class Api::SearchesController < ApplicationController

  # no render methods applied

  def show
    # not dry
    name, place = search_params[:name], search_params[:place]
    results, i = nil, 0

    debugger
    while !results && i <= name.length
      results = Business.find_by(name: name[0...(name.length - i)])
      i += 1
    end

    if !results
      category_results = find_business_by_tag(name)
    end

    @search_results = category_results
    render 'api/searches/show'
  end

  private

  def search_params
    params.require(:search)
    .permit(:name, :place)
  end

  def find_business_by_tag(name)
    cat_results = []
    categories = Category
      .includes(:business)
      .where('LOWER(categories.category) like ?', name.downcase )

    categories.each { |el| cat_results.push(el.business)}
    cat_results
  end
end
