json.array!(@registro_insumos_reactivos) do |registro_insumos_reactivo|
  json.extract! registro_insumos_reactivo, :id, :codigo, :nombre, :stock, :fecha_registro, :nombre_entregante, :hospital_id
  json.url registro_insumos_reactivo_url(registro_insumos_reactivo, format: :json)
end
