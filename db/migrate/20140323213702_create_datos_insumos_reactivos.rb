class CreateDatosInsumosReactivos < ActiveRecord::Migration
  def change
    create_table :datos_insumos_reactivos do |t|
      t.references :usuario, index: true
      t.integer :codigo
      t.float :stock
      t.datetime :fecha_registro
      t.references :hospital, index: true

      t.timestamps
    end
  end
end
