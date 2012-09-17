class UnixTimes < ActiveRecord::Migration
  def up
    change_column :results, :time1, :string
    change_column :results, :time2, :string
    change_column :results, :time3, :string
    change_column :results, :time4, :string
    change_column :results, :time5, :string
    remove_column :results, :time6
  end

  def down
  end
end
