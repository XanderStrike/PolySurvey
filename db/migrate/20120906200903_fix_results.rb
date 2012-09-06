class FixResults < ActiveRecord::Migration
  def up
    remove_column :results, :start_time
    remove_column :results, :finish_time
    remove_column :results, :time1
    remove_column :results, :time2
    remove_column :results, :time3
    add_column :results, :time1, :datetime
    add_column :results, :time2, :datetime
    add_column :results, :time3, :datetime
    add_column :results, :time4, :datetime
    add_column :results, :time5, :datetime
    add_column :results, :time6, :datetime
  end

  def down
  end
end
