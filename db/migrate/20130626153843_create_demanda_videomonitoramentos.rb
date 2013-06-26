class CreateDemandaVideomonitoramentos < ActiveRecord::Migration
  def change
    create_table :demanda_videomonitoramentos do |t|
      t.integer :qtd_camera
      t.string :obj_videomonitoramento
      t.string :infra_monitoramento
      t.boolean :previsto_orcamento

      t.timestamps
    end
  end
end
