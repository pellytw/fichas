class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nombres
      t.string :apellidos
      t.integer :tipo_de_documento_id
      t.integer :documento
      t.date :fecha_de_nacimiento
      t.string :localidad

      t.timestamps
    end
  end
end
