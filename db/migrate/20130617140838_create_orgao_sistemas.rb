class CreateOrgaoSistemas < ActiveRecord::Migration
  def change
    create_table :orgao_sistemas do |t|
      t.integer :orgao_id
      t.integer :sistemas_id
      t.string :nivel_implantacao
      t.integer :qtd_consulta
      t.integer :qtd_cadastro

      t.timestamps
    end
  end
end
