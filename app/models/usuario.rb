class Usuario < ActiveRecord::Base
  belongs_to :rol
  belongs_to :hospital
  belongs_to :datos_usuario
end
