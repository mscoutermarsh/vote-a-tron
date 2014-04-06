class Contestant < ActiveRecord::Base
  belongs_to :poll
  has_many :votes
  validates_presence_of :name
  validates_presence_of :poll
end
