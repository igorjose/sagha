json.array!(@demanda_videomonitoramentos) do |demanda_videomonitoramento|
  json.extract! demanda_videomonitoramento, :qtd_camera, :obj_videomonitoramento, :infra_monitoramento, :previsto_orcamento
  json.url demanda_videomonitoramento_url(demanda_videomonitoramento, format: :json)
end