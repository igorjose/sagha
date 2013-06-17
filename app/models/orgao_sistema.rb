class OrgaoSistema < ActiveRecord::Base
  belongs_to :orgao
  belongs_to :sistema
end
