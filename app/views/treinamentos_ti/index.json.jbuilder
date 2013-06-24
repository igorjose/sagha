json.array!(@treinamentos_ti) do |treinamento_ti|
  json.extract! treinamento_ti, :treinamento, :empresa, :qtd_pessoa
  json.url treinamento_ti_url(treinamento_ti, format: :json)
end