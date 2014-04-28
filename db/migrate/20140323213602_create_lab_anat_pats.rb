class CreateLabAnatPats < ActiveRecord::Migration
  def change
    create_table :lab_anat_pats do |t|
      t.references :paciente, index: true
      t.references :usuario, index: true
      t.datetime :fecha_toma_muestra_pat
      t.string :servicio
      t.string :cama
      t.text :diagnostico_clinico
      t.text :datos_anatomicos
      t.string :lugar_muestra
      t.text :diagnostico_operatorio
      t.string :pieza_quirurgica
      t.string :biopsia
      t.string :otros
      t.string :conservante
      t.date :fecha_entrega
      t.references :hospital, index: true

      t.timestamps
    end
  end
end
