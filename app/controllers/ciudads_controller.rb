class CiudadsController < ApplicationController
  def new
  end
 
  def show
    begin
      @ciudad = Ciudad.find(params[:id]) 
      rescue ActiveRecord::RecordNotFound
      @message="No encontramos los que buscas" 
    end
  end


end
