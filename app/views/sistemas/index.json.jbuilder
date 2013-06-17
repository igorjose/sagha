json.array!(@sistemas) do |sistema|
  json.extract! sistema, :nome
  json.url sistema_url(sistema, format: :json)
end