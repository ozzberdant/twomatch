class Comercio < ActiveRecord::Base
  acts_as_gmappable
  attr_accessible :ciudad_id, :nombre, :rubro_id, :descripcion, :direccion, :latitud, :longitud, :telefono, :email, :user_id, :cuentaCorriente, :identificadorComercio, :estado, :rut, :logo, :region_id
  belongs_to :rubro
  belongs_to :ciudad
  belongs_to :user
  has_many :recursos
  belongs_to :region


  def gmaps4rails_infowindow
   "<center>
       #{self.nombre} </br> #{self.direccion}
       <a href='/comercios_by_reserva?id=#{self.id}'>
       Ir =>
       </a> 


   </center>"  

  end
  
  def gmaps4rails_title
  "#{self.nombre}"
  end


  def tieneRecursosDisponibles(fechaBusqueda, hora)
	self.recursos.each do |recurso|
		if(recurso.tieneReservasDisponibles(fechaBusqueda, hora)==true)
			return self	
		end	
	end
	return nil
  end

end
