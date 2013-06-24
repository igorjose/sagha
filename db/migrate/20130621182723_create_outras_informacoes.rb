class CreateOutrasInformacoes < ActiveRecord::Migration
  def change
    create_table :outras_informacoes do |t|
      t.boolean :recursos_suficientes
      t.text :justificar_recursos
      t.string :grau_satisfacao
      t.text :principais_necessidades
      t.text :duvidas_levantamento

      t.timestamps
    end
  end
end
