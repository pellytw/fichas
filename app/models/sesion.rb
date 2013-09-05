class Sesion < ActiveRecord::Base
  attr_accessible :fecha_de_sesion, :motivo_de_consulta, :observaciones, :paciente_id
end
