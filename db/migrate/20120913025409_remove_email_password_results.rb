class RemoveEmailPasswordResults < ActiveRecord::Migration
  def up
    remove_column :results, :email
    remove_column :results, :password
  end

  def down
  end
end
