class AddQ25aToResults < ActiveRecord::Migration
  def change
    add_column :results, :q25a, :string
  end
end
