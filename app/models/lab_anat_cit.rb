class LabAnatCit < ActiveRecord::Base
  belongs_to :paciente
  belongs_to :usuario
  belongs_to :hospital
end
