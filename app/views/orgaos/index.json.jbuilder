json.array!(@orgaos) do |orgao|
  json.extract! orgao, :nome, :tipo, :vinculo, :endereco, :bairro, :cep, :telefone, :secretario, :email_secretario, :nome_secretaria, :telefone_secretaria, :email_secretaria, :atribuicoes_orgao
  json.url orgao_url(orgao, format: :json)
end