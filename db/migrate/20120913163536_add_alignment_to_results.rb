class AddAlignmentToResults < ActiveRecord::Migration
  def change
    add_column :results, :alignment, :string
  end
end
