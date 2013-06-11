json.array!(@desktops) do |desktop|
  json.extract! desktop, :descricao_defeito, :qtd_funcionando, :qtd_defeito, :qtd_extra, :qtd_manutencao, :qtd_emprestado, :qtd_garantia, :qtd_vigencia_contrato
  json.url desktop_url(desktop, format: :json)
end