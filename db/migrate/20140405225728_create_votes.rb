class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :contestant_id
      t.string :ip_address

      t.timestamps
    end
  end
end
