json.array!(@softwares) do |software|
  json.extract! software, :nome
  json.url software_url(software, format: :json)
end