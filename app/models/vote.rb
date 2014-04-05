class Vote < ActiveRecord::Base
  belongs_to :contestant, counter_cache: true
end
