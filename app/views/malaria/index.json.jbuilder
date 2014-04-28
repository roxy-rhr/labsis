json.array!(@malaria) do |malarium|
  json.extract! malarium, :id, :paciente_id, :usuario_id, :fecha_toma_muestra_malaria, :fecha_entrega, :hospital_id
  json.url malarium_url(malarium, format: :json)
end
