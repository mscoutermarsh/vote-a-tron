# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :poll do
    name "PollName"
    active true
    contestants { FactoryGirl.create_list(:contestant, 3) }
  end
end
