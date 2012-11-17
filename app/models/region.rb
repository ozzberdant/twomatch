class Region < ActiveRecord::Base
  attr_accessible :nombre
  has_many :ciudads
  has_many :comercios
end
