json.array!(@orgao_softwares) do |orgao_software|
  json.extract! orgao_software, :orgao_id, :software_id, :quantidade
  json.url orgao_software_url(orgao_software, format: :json)
end