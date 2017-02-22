class DashboardController < ApplicationController

  def index
    respond_to :html, :js
    if params[:search]
      @categories = params[:search]==""? Category.all : Category.fuzzy_search(params[:search])
    else
      @categories =Category.all
    end
  end
end
