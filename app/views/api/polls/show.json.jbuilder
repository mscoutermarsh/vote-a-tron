json.id @poll.id
json.name @poll.name
json.contestants @poll.contestants do |contestant|
  json.id contestant.id
  json.name contestant.name
  json.votes contestant.votes.where(valid_vote: true).count
  json.photo_url contestant.photo_url
end
