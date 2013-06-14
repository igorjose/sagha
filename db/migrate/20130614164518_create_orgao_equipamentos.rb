class CreateOrgaoEquipamentos < ActiveRecord::Migration
  def change
    create_table :orgao_equipamentos do |t|
      t.integer :orgao_id
      t.integer :equipamento_id
      t.integer :qtd_funcionando
      t.integer :qtd_defeito
      t.text :descricao_defeito
      t.integer :qtd_extra
      t.integer :qtd_emprestado
      t.integer :qtd_alugado
      t.integer :qtd_garantia

      t.timestamps
    end
  end
end
