class CreateOrcamentosTi < ActiveRecord::Migration
  def change
    create_table :orcamentos_ti do |t|
      t.integer :orcamento_ti

      t.timestamps
    end
  end
end
