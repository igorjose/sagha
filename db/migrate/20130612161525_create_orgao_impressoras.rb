class CreateOrgaoImpressoras < ActiveRecord::Migration
  def change
    create_table :orgao_impressoras do |t|
      t.integer :orgao_id
      t.string :tipo
      t.integer :funcionando
      t.integer :defeituosas
      t.text :detalhes_defeituosas
      t.integer :extras
      t.integer :emprestadas
      t.text :detalhes_emprestadas
      t.integer :proprias
      t.integer :alugadas
      t.integer :em_garantia
      t.boolean :tem_contrato_locacao
      t.boolean :tem_contrato_manutencao
      t.text :detalhes_contrato_manutencao
      t.text :detalhes_contrato_locacao

      t.timestamps
    end

    add_index :orgao_impressoras, [:orgao_id, :tipo], unique: true
  end
end
