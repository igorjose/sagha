class AddOrgaoIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :orgao_id, :integer
  end
end
