class CreateLabAnatCits < ActiveRecord::Migration
  def change
    create_table :lab_anat_cits do |t|
      t.references :paciente, index: true
      t.references :usuario, index: true
      t.datetime :fecha_toma_muestra_cit
      t.date :fecha_ult_menstruacion
      t.date :fecha_ult_parto
      t.date :fecha_aborto
      t.integer :nivel_social
      t.integer :n_emabarazos
      t.integer :nro
      t.string :sin_tratamiento
      t.integer :n_abortos
      t.string :ritmo
      t.date :dia_termo
      t.integer :n_cesareas
      t.boolean :estado_lactancia
      t.boolean :menopausia
      t.boolean :embarazo
      t.boolean :ligadura_trompas
      t.boolean :oral
      t.boolean :depo
      t.text :otros
      t.text :criocirug_hormonal
      t.string :aspecto_cuello
      t.string :flujo_vaginal
      t.string :lugar_de_muestra
      t.text :informacion_toma_muestra
      t.boolean :control
      t.datetime :fecha_entrega
      t.references :hospital, index: true

      t.timestamps
    end
  end
end
