class CreateInformacaoSites < ActiveRecord::Migration
  def change
    create_table :informacao_sites do |t|
      t.boolean :possui_site
      t.string :responsavel_tecnico
      t.text :servicos_oferecidos
      t.string :local_hospedado

      t.timestamps
    end
  end
end
