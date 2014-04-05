json.array!(@api_votes) do |api_vote|
  json.extract! api_vote, :id
  json.url api_vote_url(api_vote, format: :json)
end
