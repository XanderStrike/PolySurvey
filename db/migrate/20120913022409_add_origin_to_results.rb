class AddOriginToResults < ActiveRecord::Migration
  def change
    add_column :results, :origin, :string
  end
end
