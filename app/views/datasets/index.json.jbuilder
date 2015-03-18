json.array!(@datasets) do |dataset|
  json.extract! dataset, :id, :title, :PublicationYear, :language, :size
  json.url dataset_url(dataset, format: :json)
end
