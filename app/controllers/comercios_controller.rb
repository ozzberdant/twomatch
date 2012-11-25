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
  def show_by_ciudad_and_rubro
    begin
      @rubro=Rubro.find((params[:busqueda_comercios_form])[:id]) 
      @comercios = (Ciudad.find((params[:busqueda_comercios_form])[:ciudad_id])).comercios().where("rubro_id=?",(params[:busqueda_comercios_form])[:id])
      @json =(Ciudad.find((params[:busqueda_comercios_form])[:ciudad_id])).comercios().where("rubro_id=?",(params[:busqueda_comercios_form])[:id]).to_gmaps4rails

    rescue ActiveRecord::RecordNotFound
      @message="No encontramos los que buscas"
    end
  end
  def index
    @comercios = Comercio.all
    @json = Comercio.all.to_gmaps4rails
  end

end
