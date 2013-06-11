class AddOrgaoIdToDesktops < ActiveRecord::Migration
  def change
    add_column :desktops, :orgao_id, :integer
  end
end
