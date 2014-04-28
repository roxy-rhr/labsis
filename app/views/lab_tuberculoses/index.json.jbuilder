json.array!(@lab_tuberculoses) do |lab_tuberculose|
  json.extract! lab_tuberculose, :id, :paciente_id, :usuario_id, :fecha_toma_muestra_tuberculosis, :fecha_entrega, :hospital_id
  json.url lab_tuberculose_url(lab_tuberculose, format: :json)
end
