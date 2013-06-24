class CreateServidores < ActiveRecord::Migration
  def change
    create_table :servidores do |t|
      t.string :modelo
      t.string :fabricante
      t.string :sistema_operacional
      t.string :arquitetura
      t.string :dominio
      t.string :processador
      t.string :ram
      t.string :hd
      t.string :hostname
      t.text :descricao
      t.string :servicos

      t.timestamps
    end
  end
end
