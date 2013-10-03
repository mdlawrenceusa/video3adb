json.array!(@video_lists) do |video_list|
  json.extract! video_list, :date, :speaker, :title, :url_es, :url_msg
  json.url video_list_url(video_list, format: :json)
end
