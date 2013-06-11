class CreateOrgaoSoftwares < ActiveRecord::Migration
  def change
    create_table :orgao_softwares do |t|
      t.integer :orgao_id
      t.integer :software_id
      t.integer :quantidade

      t.timestamps
    end
  end
end
