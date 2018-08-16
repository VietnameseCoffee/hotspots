class Api::SearchesController < ApplicationController

  # no render methods applied

  def show
    # debugger
    results = search_params
    @businesses = [Business.first]
    render 'api/searches/show'
  end

  private

  def search_params
    params.require(:search)
    .permit(:name, :place )
  end
end
