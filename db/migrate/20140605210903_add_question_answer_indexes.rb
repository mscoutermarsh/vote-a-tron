class AddQuestionAnswerIndexes < ActiveRecord::Migration
  def change
    add_column :votes, :question, :string
    add_column :votes, :answer, :integer

    add_index :votes, :ip_address
    add_index :votes, :contestant_id
  end
end
