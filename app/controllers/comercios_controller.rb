class ComerciosController < ApplicationController
  def new
  end

def show
    begin
      @comercio = Comercio.find(params[:id])
      @recursos = @comercio.recursos
      rescue ActiveRecord::RecordNotFound
      @message="No encontramos los que buscas"
    end
  end

end
