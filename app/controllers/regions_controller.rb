class RegionsController < ApplicationController
  def new
  end

  def index
    @regions = Region.all
    #@regions = Region.paginate(page: params[:page])
  end

  def show
    @region = Region.find(params[:id])
  end

end
