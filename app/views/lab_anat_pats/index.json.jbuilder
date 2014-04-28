json.array!(@lab_anat_pats) do |lab_anat_pat|
  json.extract! lab_anat_pat, :id, :paciente_id, :usuario_id, :fecha_toma_muestra_pat, :servicio, :cama, :diagnostico_clinico, :datos_anatomicos, :lugar_muestra, :diagnostico_operatorio, :pieza_quirurgica, :biopsia, :otros, :conservante, :fecha_entrega, :hospital_id
  json.url lab_anat_pat_url(lab_anat_pat, format: :json)
end
