json.array!(@orgao_sistemas) do |orgao_sistema|
  json.extract! orgao_sistema, :orgao_id, :sistemas_id, :nivel_implantacao, :qtd_consulta, :qtd_cadastro
  json.url orgao_sistema_url(orgao_sistema, format: :json)
end