json.array!(@videomonitoramentos) do |videomonitoramento|
  json.extract! videomonitoramento, :possui_cameras, :pertencente_a, :atual_videomonitoramento, :previsto_videomonitoramento
  json.url videomonitoramento_url(videomonitoramento, format: :json)
end