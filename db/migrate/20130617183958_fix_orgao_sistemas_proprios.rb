class FixOrgaoSistemasProprios < ActiveRecord::Migration
  def change
  	remove_column :orgao_sistemas_proprios, :possui_documentos, :text
  	add_column :orgao_sistemas_proprios, :possui_documentos, :boolean
  end
end
