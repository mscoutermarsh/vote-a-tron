json.array!(@api_contestants) do |api_contestant|
  json.extract! api_contestant, :id
  json.url api_contestant_url(api_contestant, format: :json)
end
