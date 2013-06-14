json.array!(@equipamentos) do |equipamento|
  json.extract! equipamento, :nome
  json.url equipamento_url(equipamento, format: :json)
end