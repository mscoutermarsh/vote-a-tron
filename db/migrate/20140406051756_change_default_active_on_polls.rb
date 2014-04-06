class ChangeDefaultActiveOnPolls < ActiveRecord::Migration
  def change
    change_column_default(:polls, :active, true)
  end
end
