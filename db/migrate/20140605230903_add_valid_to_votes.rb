class AddValidToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :valid_vote, :boolean, default: false

    add_index :votes, :valid_vote
  end
end
