class AddCodeToResults < ActiveRecord::Migration
  def change
    add_column :results, :code, :string
  end
end
