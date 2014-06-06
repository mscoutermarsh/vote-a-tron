class Vote < ActiveRecord::Base
  belongs_to :contestant
  validates_presence_of :contestant
  before_create :setup_math_question

  def confirm(answer)
    (answer.to_i == self.answer) ? complete_vote! : false
  end

  def complete_vote!
    self.update_attribute(:valid_vote, true)
  end

private
  def setup_math_question
    int1 = 1 + rand(15)
    int2 = 1 + rand(4)
    self.answer = int1+int2
    self.question = "What's #{int1}+#{int2}?"
  end
end
