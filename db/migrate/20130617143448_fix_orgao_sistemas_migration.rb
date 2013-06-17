class FixOrgaoSistemasMigration < ActiveRecord::Migration
  def change
  	remove_column :orgao_sistemas, :sistemas_id, :integer
  	add_column :orgao_sistemas, :sistema_id, :integer
  end
end
