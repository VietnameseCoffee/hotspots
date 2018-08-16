class Api::SearchesController < ApplicationController

  # no render methods applied

  def show
    debugger
    results = search_params
    1 +1
  end

  private

  def search_params
    params.require(:search)
    .permit(:name, :place )
  end
end
