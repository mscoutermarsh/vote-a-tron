class AddReferrerToVote < ActiveRecord::Migration
  def change
    add_column :votes, :referrer, :string
  end
end
