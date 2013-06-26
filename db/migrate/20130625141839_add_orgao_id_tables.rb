class AddOrgaoIdTables < ActiveRecord::Migration
  def change
  	add_column :softwares, :orgao_id, :integer
  	add_column :informacoes_pessoais, :orgao_id, :integer
  	add_column :servidores, :orgao_id, :integer
  	add_column :orgao_sistemas_proprios, :orgao_id, :integer
  	add_column :informacoes_ged, :orgao_id, :integer
  	add_column :projetos_ti, :orgao_id, :integer
  	add_column :orcamentos_ti, :orgao_id, :integer
  	add_column :informacao_sites, :orgao_id, :integer
  	add_column :videomonitoramentos, :orgao_id, :integer
  	add_column :outras_informacoes, :orgao_id, :integer
  end
end
