class CreateInformacoesGed < ActiveRecord::Migration
  def change
    create_table :informacoes_ged do |t|
      t.boolean :processo_digitalizacao
      t.integer :numero_digitalizacao
      t.boolean :documentos_indexados
      t.boolean :hospedado_sepog

      t.timestamps
    end
  end
end
