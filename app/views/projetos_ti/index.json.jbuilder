json.array!(@projetos_ti) do |projeto_ti|
  json.extract! projeto_ti, :nome_projeto, :descricao, :gerente_projeto, :coordenador_tecnico, :valor, :prazo, :previsto_orcamento, :observacao
  json.url projeto_ti_url(projeto_ti, format: :json)
end