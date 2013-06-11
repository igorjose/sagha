json.array!(@informacoes_pessoais) do |informacao_pessoal|
  json.extract! informacao_pessoal, :cargo_id, :nome, :telefone, :celular_cooperativo, :celular_pessoal, :email_cooperativo, :email_pessoal, :tipo_contratacao, :vigencia_contrato, :pode_renovar, :mini_curriculo, :experiencia, :cursos, :conhecimentos_adicionais, :observacoes
  json.url informacao_pessoal_url(informacao_pessoal, format: :json)
end