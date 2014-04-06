json.id @poll.id
json.name @poll.name
json.active @poll.active
json.contestants @poll.contestants do |contestant|
  json.id contestant.id
  json.name contestant.name
  json.votes contestant.votes_count
  json.photo_url contestant.photo_url
end
