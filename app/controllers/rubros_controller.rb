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
    @horas = ["00:00", "01:00", "02:00", "03:00", "04:00", "05:00", "06:00", "07:00", "08:00", "09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00", "21:00", "22:00", "23:00"] 

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


