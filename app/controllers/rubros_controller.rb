class RubrosController < ApplicationController
  def new
  end

  def index
      @rubros = Rubro.all   
  end

  def show
    begin
      @rubro = Rubro.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      @message="No encontramos los que buscas"
    end
  end

end
