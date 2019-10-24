class AddPollIdToVote < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :poll_id, :integer
  end
end
