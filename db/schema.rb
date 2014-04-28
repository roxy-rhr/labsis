# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140323214257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chagas", force: true do |t|
    t.integer  "paciente_id"
    t.integer  "usuario_id"
    t.datetime "fecha_toma_muestra_chagas"
    t.datetime "fecha_entrega"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chagas", ["hospital_id"], name: "index_chagas_on_hospital_id", using: :btree
  add_index "chagas", ["paciente_id"], name: "index_chagas_on_paciente_id", using: :btree
  add_index "chagas", ["usuario_id"], name: "index_chagas_on_usuario_id", using: :btree

  create_table "datos_insumos_reactivos", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "codigo"
    t.float    "stock"
    t.datetime "fecha_registro"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "datos_insumos_reactivos", ["hospital_id"], name: "index_datos_insumos_reactivos_on_hospital_id", using: :btree
  add_index "datos_insumos_reactivos", ["usuario_id"], name: "index_datos_insumos_reactivos_on_usuario_id", using: :btree

  create_table "datos_usuarios", force: true do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "direccion"
    t.integer  "telefono"
    t.integer  "ci"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hospitals", force: true do |t|
    t.string   "nombre"
    t.string   "sigla"
    t.string   "provincia"
    t.string   "ciudad"
    t.string   "direccion"
    t.string   "logo"
    t.string   "categoria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insumos_reactivos", force: true do |t|
    t.string   "nombre"
    t.integer  "codigo"
    t.float    "stock"
    t.string   "nombre_lab"
    t.text     "detalle"
    t.string   "tipo"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "insumos_reactivos", ["hospital_id"], name: "index_insumos_reactivos_on_hospital_id", using: :btree

  create_table "lab_anat_cits", force: true do |t|
    t.integer  "paciente_id"
    t.integer  "usuario_id"
    t.datetime "fecha_toma_muestra_cit"
    t.date     "fecha_ult_menstruacion"
    t.date     "fecha_ult_parto"
    t.date     "fecha_aborto"
    t.integer  "nivel_social"
    t.integer  "n_emabarazos"
    t.integer  "nro"
    t.string   "sin_tratamiento"
    t.integer  "n_abortos"
    t.string   "ritmo"
    t.date     "dia_termo"
    t.integer  "n_cesareas"
    t.boolean  "estado_lactancia"
    t.boolean  "menopausia"
    t.boolean  "embarazo"
    t.boolean  "ligadura_trompas"
    t.boolean  "oral"
    t.boolean  "depo"
    t.text     "otros"
    t.text     "criocirug_hormonal"
    t.string   "aspecto_cuello"
    t.string   "flujo_vaginal"
    t.string   "lugar_de_muestra"
    t.text     "informacion_toma_muestra"
    t.boolean  "control"
    t.datetime "fecha_entrega"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lab_anat_cits", ["hospital_id"], name: "index_lab_anat_cits_on_hospital_id", using: :btree
  add_index "lab_anat_cits", ["paciente_id"], name: "index_lab_anat_cits_on_paciente_id", using: :btree
  add_index "lab_anat_cits", ["usuario_id"], name: "index_lab_anat_cits_on_usuario_id", using: :btree

  create_table "lab_anat_pats", force: true do |t|
    t.integer  "paciente_id"
    t.integer  "usuario_id"
    t.datetime "fecha_toma_muestra_pat"
    t.string   "servicio"
    t.string   "cama"
    t.text     "diagnostico_clinico"
    t.text     "datos_anatomicos"
    t.string   "lugar_muestra"
    t.text     "diagnostico_operatorio"
    t.string   "pieza_quirurgica"
    t.string   "biopsia"
    t.string   "otros"
    t.string   "conservante"
    t.date     "fecha_entrega"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lab_anat_pats", ["hospital_id"], name: "index_lab_anat_pats_on_hospital_id", using: :btree
  add_index "lab_anat_pats", ["paciente_id"], name: "index_lab_anat_pats_on_paciente_id", using: :btree
  add_index "lab_anat_pats", ["usuario_id"], name: "index_lab_anat_pats_on_usuario_id", using: :btree

  create_table "lab_cancer_uterinos", force: true do |t|
    t.integer  "paciente_id"
    t.integer  "usuario_id"
    t.datetime "fecha_toma_muestra_cancer_uterino"
    t.datetime "fecha_entrega"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lab_cancer_uterinos", ["hospital_id"], name: "index_lab_cancer_uterinos_on_hospital_id", using: :btree
  add_index "lab_cancer_uterinos", ["paciente_id"], name: "index_lab_cancer_uterinos_on_paciente_id", using: :btree
  add_index "lab_cancer_uterinos", ["usuario_id"], name: "index_lab_cancer_uterinos_on_usuario_id", using: :btree

  create_table "lab_tuberculoses", force: true do |t|
    t.integer  "paciente_id"
    t.integer  "usuario_id"
    t.datetime "fecha_toma_muestra_tuberculosis"
    t.datetime "fecha_entrega"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lab_tuberculoses", ["hospital_id"], name: "index_lab_tuberculoses_on_hospital_id", using: :btree
  add_index "lab_tuberculoses", ["paciente_id"], name: "index_lab_tuberculoses_on_paciente_id", using: :btree
  add_index "lab_tuberculoses", ["usuario_id"], name: "index_lab_tuberculoses_on_usuario_id", using: :btree

  create_table "malaria", force: true do |t|
    t.integer  "paciente_id"
    t.integer  "usuario_id"
    t.datetime "fecha_toma_muestra_malaria"
    t.datetime "fecha_entrega"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "malaria", ["hospital_id"], name: "index_malaria_on_hospital_id", using: :btree
  add_index "malaria", ["paciente_id"], name: "index_malaria_on_paciente_id", using: :btree
  add_index "malaria", ["usuario_id"], name: "index_malaria_on_usuario_id", using: :btree

  create_table "pacientes", force: true do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.date     "fecha_nacimiento"
    t.integer  "edad"
    t.string   "sexo"
    t.string   "direccion"
    t.string   "ciudad"
    t.integer  "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registro_insumos_reactivos", force: true do |t|
    t.integer  "codigo"
    t.string   "nombre"
    t.float    "stock"
    t.datetime "fecha_registro"
    t.string   "nombre_entregante"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registro_insumos_reactivos", ["hospital_id"], name: "index_registro_insumos_reactivos_on_hospital_id", using: :btree

  create_table "rols", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.integer  "rol_id"
    t.string   "nombre_usuario"
    t.string   "clave"
    t.integer  "hospital_id"
    t.integer  "datos_usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["datos_usuario_id"], name: "index_usuarios_on_datos_usuario_id", using: :btree
  add_index "usuarios", ["hospital_id"], name: "index_usuarios_on_hospital_id", using: :btree
  add_index "usuarios", ["rol_id"], name: "index_usuarios_on_rol_id", using: :btree

end
