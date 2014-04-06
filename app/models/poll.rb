class Poll < ActiveRecord::Base
  has_many :contestants
  validates_presence_of :name

end
