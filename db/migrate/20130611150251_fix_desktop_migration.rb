class FixDesktopMigration < ActiveRecord::Migration
  def change
    remove_column :desktops, :vigencia_contrato_locacao
    remove_column :desktops, :vigencia_contrato_manutencao
  end
end
