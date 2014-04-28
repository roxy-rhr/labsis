json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :nombre, :sigla, :provincia, :ciudad, :direccion, :logo, :categoria
  json.url hospital_url(hospital, format: :json)
end
