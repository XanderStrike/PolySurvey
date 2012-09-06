class AddStuffToResults < ActiveRecord::Migration
  def change
    add_column :results, :start_time, :datetime
    add_column :results, :finish_time, :datetime
    add_column :results, :match_scenario, :integer
    add_column :results, :poll_scenario, :integer
  end
end
