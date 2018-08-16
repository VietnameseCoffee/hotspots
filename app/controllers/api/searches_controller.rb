class Api::SearchesController < ApplicationController

  # no render methods applied

  def show
    debugger
  end

  private

  def search_params
    params.require(:search)
    .permit(:name, :place )
  end
end
