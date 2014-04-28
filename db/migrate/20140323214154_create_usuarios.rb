class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.references :rol, index: true
      t.string :nombre_usuario
      t.string :clave
      t.references :hospital, index: true
      t.references :datos_usuario, index: true

      t.timestamps
    end
  end
end
