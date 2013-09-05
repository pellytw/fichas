class CreatePacienteTurnos < ActiveRecord::Migration
  def change
    create_table :paciente_turnos do |t|
      t.integer :paciente_id
      t.integer :turno_id
      t.datetime :fecha_y_hora

      t.timestamps
    end
  end
end
