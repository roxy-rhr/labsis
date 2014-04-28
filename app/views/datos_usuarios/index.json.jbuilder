json.array!(@datos_usuarios) do |datos_usuario|
  json.extract! datos_usuario, :id, :nombres, :apellidos, :direccion, :telefono, :ci
  json.url datos_usuario_url(datos_usuario, format: :json)
end
