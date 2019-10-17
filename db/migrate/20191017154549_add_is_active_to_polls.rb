class AddIsActiveToPolls < ActiveRecord::Migration[5.2]
  def change
    add_column :polls, :is_active, :boolean
  end
end
