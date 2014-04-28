json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :rol_id, :nombre_usuario, :clave, :hospital_id, :datos_usuario_id
  json.url usuario_url(usuario, format: :json)
end
