class CreateOrgaoSistemasProprios < ActiveRecord::Migration
  def change
    create_table :orgao_sistemas_proprios do |t|
      t.string :nome
      t.text :descricao
      t.string :desenvolvedor
      t.string :manutencao
      t.boolean :cod_fonte
      t.text :descricao_cod_fonte
      t.string :lugar_hospedado
      t.integer :nr_usuario
      t.string :linguagem
      t.string :banco
      t.boolean :tem_licenca
      t.boolean :terceiros_acessando
      t.string :responsavel_banco
      t.string :nivel_confidencialidade
      t.string :nivel_integracao
      t.boolean :existe_padroes
      t.boolean :existe_ambiente_homologacao
      t.boolean :existe_backup_diferenciado
      t.boolean :existe_backup
      t.text :descricao_backup
      t.string :linguagem_banco
      t.text :possui_documentos
      t.text :descricao_documentos
      t.boolean :possui_manual
      t.text :descricao_manual

      t.timestamps
    end
  end
end
