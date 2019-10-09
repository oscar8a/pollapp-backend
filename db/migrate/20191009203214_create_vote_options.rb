class CreateVoteOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :vote_options do |t|
      t.string :option_name
      t.integer :poll_id

      t.timestamps
    end
  end
end
