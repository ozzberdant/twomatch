# == Schema Information
#
# Table name: instalacions
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  recinto_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Instalacion < ActiveRecord::Base
  attr_accessible :nombre, :recinto_id
belongs_to :recinto
end
