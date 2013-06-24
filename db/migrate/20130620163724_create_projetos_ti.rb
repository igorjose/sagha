class CreateProjetosTi < ActiveRecord::Migration
  def change
    create_table :projetos_ti do |t|
      t.string :nome_projeto
      t.text :descricao
      t.string :gerente_projeto
      t.string :coordenador_tecnico
      t.string :valor
      t.string :prazo
      t.boolean :previsto_orcamento
      t.text :observacao

      t.timestamps
    end
  end
end
