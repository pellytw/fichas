class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.text :descripcion

      t.timestamps
    end
  end
end
