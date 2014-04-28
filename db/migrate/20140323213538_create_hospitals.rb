class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :nombre
      t.string :sigla
      t.string :provincia
      t.string :ciudad
      t.string :direccion
      t.string :logo
      t.string :categoria

      t.timestamps
    end
  end
end
