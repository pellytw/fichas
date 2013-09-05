class CreateSesionPatologia < ActiveRecord::Migration
  def change
    create_table :sesion_patologia do |t|
      t.integer :sesion_id
      t.integer :patologia_id

      t.timestamps
    end
  end
end
