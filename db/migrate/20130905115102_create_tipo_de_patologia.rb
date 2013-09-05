class CreateTipoDePatologia < ActiveRecord::Migration
  def change
    create_table :tipo_de_patologia do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
