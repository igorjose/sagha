class InformacaoPessoal < ActiveRecord::Base
  belongs_to :orgao
  belongs_to :cargo
end
