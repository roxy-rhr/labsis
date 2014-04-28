class CreateLabCancerUterinos < ActiveRecord::Migration
  def change
    create_table :lab_cancer_uterinos do |t|
      t.references :paciente, index: true
      t.references :usuario, index: true
      t.datetime :fecha_toma_muestra_cancer_uterino
      t.datetime :fecha_entrega
      t.references :hospital, index: true

      t.timestamps
    end
  end
end
