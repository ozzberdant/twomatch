class Ciudad < ActiveRecord::Base
  attr_accessible :nombre, :region_id
  belongs_to :region
  has_many :comercios
end
