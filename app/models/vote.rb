class Vote < ActiveRecord::Base
  belongs_to :contestant, counter_cache: true
  validates_presence_of :contestant
end
