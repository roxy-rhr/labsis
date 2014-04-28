json.array!(@insumos_reactivos) do |insumos_reactivo|
  json.extract! insumos_reactivo, :id, :nombre, :codigo, :stock, :nombre_lab, :detalle, :tipo, :hospital_id
  json.url insumos_reactivo_url(insumos_reactivo, format: :json)
end
