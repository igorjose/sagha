json.array!(@informacao_sites) do |informacao_site|
  json.extract! informacao_site, :possui_site, :responsavel_tecnico, :servicos_oferecidos, :local_hospedado
  json.url informacao_site_url(informacao_site, format: :json)
end