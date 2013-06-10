class CreateDesktops < ActiveRecord::Migration
  def change
    create_table :desktops do |t|
      t.string :descricao_defeito
      t.integer :qtd_funcionando
      t.integer :qtd_defeito
      t.integer :qtd_extra
      t.integer :qtd_manutencao
      t.integer :qtd_emprestado
      t.integer :qtd_garantia
      t.integer :qtd_vigencia_contrato

      t.timestamps
    end
  end
end
