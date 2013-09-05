class PacienteTurno < ActiveRecord::Base
  attr_accessible :fecha_y_hora, :paciente_id, :turno_id
end
