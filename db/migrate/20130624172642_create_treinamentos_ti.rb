class CreateTreinamentosTi < ActiveRecord::Migration
  def change
    create_table :treinamentos_ti do |t|
      t.string :treinamento
      t.string :empresa
      t.integer :qtd_pessoa

      t.timestamps
    end
  end
end
