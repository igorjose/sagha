json.array!(@servidores) do |servidor|
  json.extract! servidor, :modelo, :fabricante, :sistema_operacional, :arquitetura, :dominio, :processador, :ram, :hd, :hostname, :descricao, :servicos
  json.url servidor_url(servidor, format: :json)
end