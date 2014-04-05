class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.string :name
      t.integer :poll_id

      t.timestamps
    end

    add_index :contestants, :poll_id
  end
end
