class AddQ33Q34ToResults < ActiveRecord::Migration
  def change
   add_column :results, :q33, :string
   add_column :results, :q34, :string
  end
end
