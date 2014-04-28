class CreateLabTuberculoses < ActiveRecord::Migration
  def change
    create_table :lab_tuberculoses do |t|
      t.references :paciente, index: true
      t.references :usuario, index: true
      t.datetime :fecha_toma_muestra_tuberculosis
      t.datetime :fecha_entrega
      t.references :hospital, index: true

      t.timestamps
    end
  end
end
