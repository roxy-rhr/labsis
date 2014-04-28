json.array!(@datos_insumos_reactivos) do |datos_insumos_reactivo|
  json.extract! datos_insumos_reactivo, :id, :usuario_id, :codigo, :stock, :fecha_registro, :hospital_id
  json.url datos_insumos_reactivo_url(datos_insumos_reactivo, format: :json)
end
