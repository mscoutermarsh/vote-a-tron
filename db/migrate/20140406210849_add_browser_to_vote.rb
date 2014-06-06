class AddBrowserToVote < ActiveRecord::Migration
  def change
    add_column :votes, :browser, :string
  end
end
