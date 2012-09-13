class AddAttrsToUsers < ActiveRecord::Migration
  def up
    add_column :users, :email, :string
    add_column :users, :password, :string
    add_column :users, :survey_finished, :boolean
    add_column :users, :admin, :boolean
  end
  def down
    remove_column :users, :email
    remove_column :users, :password
    remove_column :users, :survey_finished
    remove_column :users, :admin
  end
end

