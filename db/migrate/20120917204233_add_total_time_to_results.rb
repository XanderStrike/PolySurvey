class AddTotalTimeToResults < ActiveRecord::Migration
  def change
    add_column :results, :total_time, :string
  end
end
