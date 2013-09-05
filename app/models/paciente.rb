class Paciente < ActiveRecord::Base
  attr_accessible :apellidos, :documento, :fecha_de_nacimiento, :localidad, :nombres, :tipo_de_documento_id
end
