class OrgaoEquipamento < ActiveRecord::Base
  belongs_to :orgao
  belongs_to :equipamento
end
