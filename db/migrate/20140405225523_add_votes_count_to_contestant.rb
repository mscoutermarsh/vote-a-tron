class AddVotesCountToContestant < ActiveRecord::Migration
  def change
    add_column :contestants, :votes_count, :integer
  end
end
