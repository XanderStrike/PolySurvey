class AddResults < ActiveRecord::Migration
  def change
    add_column :results, :vote, :integer
    add_column :results, :time1, :integer
    add_column :results, :time2, :integer
    add_column :results, :time3, :integer
  end
end
