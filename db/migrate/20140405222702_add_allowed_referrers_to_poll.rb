class AddAllowedReferrersToPoll < ActiveRecord::Migration
  def change
    add_column :polls, :allowed_referrers, :string
  end
end
