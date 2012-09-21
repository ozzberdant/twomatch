class Recinto < ActiveRecord::Base
  attr_accessible :direccion, :nombre
has_many :instalacions
end
