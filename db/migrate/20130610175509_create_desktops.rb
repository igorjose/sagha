class CreateDesktops < ActiveRecord::Migration
  def change
    create_table :desktops do |t|
      t.integer :qtd_funcionando
      t.integer :qtd_extra
      t.integer :qtd_defeito
      t.string :descricao_defeito
      t.integer :qtd_emprestado
      t.string :lugar_emprestado
      t.integer :qtd_garantia
      t.boolean :tem_contrato_locacao
      t.integer :qtd_alugados
      t.string :descricao_locacao
      t.integer :vigencia_contrato_locacao
      t.boolean :tem_contrato_manutencao
      t.integer :qtd_manutencao
      t.string :descricao_manutencao
      t.integer :vigencia_contrato_manutencao

      t.timestamps
    end
  end
end