class RubrosController < ApplicationController

  caches_page :index, :show

  def new
  end

  def index
       @canchas = Rubro.find(1)
       @salasDeEnsayo = Rubro.find(2)
       @hostales = Rubro.find(3)
  end

  def show
    @rubro = Rubro.find(params[:id])
    @busquedaComerciosForm = BusquedaComerciosForm.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @busquedaComerciosForm }
  end

  end

  def dynamic_ciudads
    @ciudads = (Region.find(params[:id])).ciudads()
      respond_to do |format|
      format.js
    end
  end
end


