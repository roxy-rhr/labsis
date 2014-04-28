class CreateRegistroInsumosReactivos < ActiveRecord::Migration
  def change
    create_table :registro_insumos_reactivos do |t|
      t.integer :codigo
      t.string :nombre
      t.float :stock
      t.datetime :fecha_registro
      t.string :nombre_entregante
      t.references :hospital, index: true

      t.timestamps
    end
  end
end
