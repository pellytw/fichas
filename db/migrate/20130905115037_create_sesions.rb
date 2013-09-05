class CreateSesions < ActiveRecord::Migration
  def change
    create_table :sesions do |t|
      t.text :motivo_de_consulta
      t.date :fecha_de_sesion
      t.integer :paciente_id
      t.text :observaciones

      t.timestamps
    end
  end
end
