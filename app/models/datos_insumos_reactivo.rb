class DatosInsumosReactivo < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :hospital
end
