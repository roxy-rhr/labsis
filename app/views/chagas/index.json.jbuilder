json.array!(@chagas) do |chaga|
  json.extract! chaga, :id, :paciente_id, :usuario_id, :fecha_toma_muestra_chagas, :fecha_entrega, :hospital_id
  json.url chaga_url(chaga, format: :json)
end
