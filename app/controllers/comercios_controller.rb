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
      
      @horaBusqueda = (params[:busqueda_comercios_form])[:hora]
      @fechaBusqueda = (params[:busqueda_comercios_form])[:fechaBusqueda]
      @rubro = Rubro.find((params[:busqueda_comercios_form])[:id]) 
      @comerciosRubro = (Ciudad.find((params[:busqueda_comercios_form])[:ciudad_id])).comercios().where("rubro_id=?",(params[:busqueda_comercios_form])[:id])
      @comerciosDisponibles = []	
      
	@comerciosRubro.each do |comercio|
		if(comercio.tieneRecursosDisponibles(Date.strptime(@fechaBusqueda, '%m/%d/%Y'), @horaBusqueda).nil?)
			puts "There is no object!"
		else 
			@comerciosDisponibles.push(comercio.tieneRecursosDisponibles(Date.strptime(@fechaBusqueda, '%m/%d/%Y'), @horaBusqueda))
      			session[:fechaBusqueda] = @fechaBusqueda
			session[:horaBusqueda] = @horaBusqueda
		end
      	end

	 @comercios =  @comerciosDisponibles
	 @json =  @comerciosDisponibles.to_gmaps4rails


    rescue ActiveRecord::RecordNotFound
      @message="No encontramos los que buscas"
    end
  end
  



  def index
    @comercios = Comercio.all
    @json = Comercio.all.to_gmaps4rails
  end

  def comercios_by_reserva 
  	begin
      		puts session[:fechaBusqueda] 
		puts session[:horaBusqueda] 
		@comercio = Comercio.find(params[:id])
      		@recursos = @comercio.recursos
		@json =  @comercio.to_gmaps4rails
		@reservasDisponiblesByRecurso = []
	
		@recursos.each do |recurso|
		
		@reserva = recurso.reservasDisponibles(Date.strptime(session[:fechaBusqueda] , '%m/%d/%Y'), session[:horaBusqueda])
		puts  @reserva	
		if(@reserva.nil?)
			puts "no hay reserva disponible!"
		else 
			@reservasDisponiblesByRecurso.push(@reserva)
		end
      	end

	rescue ActiveRecord::RecordNotFound
      		@message="No encontramos los que buscas"
    	end
  end

end
