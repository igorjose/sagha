json.array!(@informacoes_ged) do |informacao_ged|
  json.extract! informacao_ged, :processo_digitalizacao, :numero_digitalizacao, :documentos_indexados, :hospedado_sepog
  json.url informacao_ged_url(informacao_ged, format: :json)
end