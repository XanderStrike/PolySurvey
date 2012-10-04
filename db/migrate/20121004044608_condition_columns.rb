class ConditionColumns < ActiveRecord::Migration
  def up
	remove_column :results, :match_scenario
	remove_column :results, :poll_scenario
	add_column :results, :combined_scenario, :string
	add_column :results, :pid, :string
	add_column :results, :blowout, :string
	add_column :results, :close_match, :string
  end

  def down
	add_column :results, :match_scenario, :string
	add_column :results, :poll_scenario, :string
	remove_column :results, :combined_scenario
	remove_column :results, :pid
	remove_column :results, :blowout
	remove_column :results, :close_match
  end
end
