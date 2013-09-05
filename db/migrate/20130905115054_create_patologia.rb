class CreatePatologia < ActiveRecord::Migration
  def change
    create_table :patologia do |t|
      t.string :nombre
      t.integer :tipo_de_patologia_id

      t.timestamps
    end
  end
end
