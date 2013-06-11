class OrgaoSoftware < ActiveRecord::Base
  belongs_to :orgao
  belongs_to :software
end
