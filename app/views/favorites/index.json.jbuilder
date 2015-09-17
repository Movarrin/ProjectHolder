json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :name, :marvel_id, :user
  json.url favorite_url(favorite, format: :json)
end
