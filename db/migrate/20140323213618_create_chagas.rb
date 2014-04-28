class CreateChagas < ActiveRecord::Migration
  def change
    create_table :chagas do |t|
      t.references :paciente, index: true
      t.references :usuario, index: true
      t.datetime :fecha_toma_muestra_chagas
      t.datetime :fecha_entrega
      t.references :hospital, index: true

      t.timestamps
    end
  end
end
