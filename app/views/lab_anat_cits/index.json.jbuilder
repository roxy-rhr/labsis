json.array!(@lab_anat_cits) do |lab_anat_cit|
  json.extract! lab_anat_cit, :id, :paciente_id, :usuario_id, :fecha_toma_muestra_cit, :fecha_ult_menstruacion, :fecha_ult_parto, :fecha_aborto, :nivel_social, :n_emabarazos, :nro, :sin_tratamiento, :n_abortos, :ritmo, :dia_termo, :n_cesareas, :estado_lactancia, :menopausia, :embarazo, :ligadura_trompas, :oral, :depo, :otros, :criocirug_hormonal, :aspecto_cuello, :flujo_vaginal, :lugar_de_muestra, :informacion_toma_muestra, :control, :fecha_entrega, :hospital_id
  json.url lab_anat_cit_url(lab_anat_cit, format: :json)
end
