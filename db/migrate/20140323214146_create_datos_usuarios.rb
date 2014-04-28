class CreateDatosUsuarios < ActiveRecord::Migration
  def change
    create_table :datos_usuarios do |t|
      t.string :nombres
      t.string :apellidos
      t.string :direccion
      t.integer :telefono
      t.integer :ci

      t.timestamps
    end
  end
end
