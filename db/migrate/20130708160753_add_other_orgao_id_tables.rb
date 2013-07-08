class AddOtherOrgaoIdTables < ActiveRecord::Migration
  def change
  	add_column :treinamentos_ti, :orgao_id, :integer
  	add_column :demanda_videomonitoramentos, :orgao_id, :integer
  end
end
