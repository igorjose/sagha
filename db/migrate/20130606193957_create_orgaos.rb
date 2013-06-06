class CreateOrgaos < ActiveRecord::Migration
  def change
    create_table :orgaos do |t|
      t.string :nome
      t.string :tipo
      t.string :vinculo
      t.string :endereco
      t.string :bairro
      t.integer :cep
      t.string :telefone
      t.string :secretario
      t.string :email_secretario
      t.string :nome_secretaria
      t.string :telefone_secretaria
      t.string :email_secretaria
      t.string :atribuicoes_orgao

      t.timestamps
    end
  end
end
