json.array!(@orgao_equipamentos) do |orgao_equipamento|
  json.extract! orgao_equipamento, :orgao_id, :equipamento_id, :qtd_funcionando, :qtd_defeito, :descricao_defeito, :qtd_extra, :qtd_emprestado, :qtd_alugado, :qtd_garantia
  json.url orgao_equipamento_url(orgao_equipamento, format: :json)
end