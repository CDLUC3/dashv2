json.array!(@records) do |record|
  json.extract! record, :id, :title, :data_type
  json.url record_url(record, format: :json)
end
