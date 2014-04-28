json.array!(@lab_cancer_uterinos) do |lab_cancer_uterino|
  json.extract! lab_cancer_uterino, :id, :paciente_id, :usuario_id, :fecha_toma_muestra_cancer_uterino, :fecha_entrega, :hospital_id
  json.url lab_cancer_uterino_url(lab_cancer_uterino, format: :json)
end
