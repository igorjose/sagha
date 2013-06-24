json.array!(@orcamentos_ti) do |orcamento_ti|
  json.extract! orcamento_ti, :orcamento_ti
  json.url orcamento_ti_url(orcamento_ti, format: :json)
end