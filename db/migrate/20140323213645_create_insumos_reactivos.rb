class CreateInsumosReactivos < ActiveRecord::Migration
  def change
    create_table :insumos_reactivos do |t|
      t.string :nombre
      t.integer :codigo
      t.float :stock
      t.string :nombre_lab
      t.text :detalle
      t.string :tipo
      t.references :hospital, index: true

      t.timestamps
    end
  end
end
