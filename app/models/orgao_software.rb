class OrgaoSoftware < ActiveRecord::Base
  belongs_to :orgao
  has_many :softwares
end
