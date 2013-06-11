class CreateInformacoesPessoais < ActiveRecord::Migration
  def change
    create_table :informacoes_pessoais do |t|
      t.integer :cargo_id
      t.string :nome
      t.string :telefone
      t.string :celular_cooperativo
      t.string :celular_pessoal
      t.string :email_cooperativo
      t.string :email_pessoal
      t.string :tipo_contratacao
      t.date :vigencia_contrato
      t.boolean :pode_renovar
      t.text :mini_curriculo
      t.text :experiencia
      t.text :cursos
      t.text :conhecimentos_adicionais
      t.text :observacoes

      t.timestamps
    end
  end
end
