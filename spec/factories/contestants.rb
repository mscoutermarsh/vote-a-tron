# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contestant do
    name "Alex"
    photo_url "http://mikecoutermarsh.com/photo.png"
    votes { FactoryGirl.create_list(:vote, rand(5)) }
  end
end
