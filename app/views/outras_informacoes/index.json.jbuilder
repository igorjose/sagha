json.array!(@outras_informacoes) do |outra_informacao|
  json.extract! outra_informacao, :recursos_suficientes, :justificar_recursos, :grau_satisfacao, :principais_necessidades, :duvidas_levantamento
  json.url outra_informacao_url(outra_informacao, format: :json)
end