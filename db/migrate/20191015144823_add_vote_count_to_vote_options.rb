class AddVoteCountToVoteOptions < ActiveRecord::Migration[5.2]
  def change
    add_column :vote_options, :vote_count, :integer
  end
end
