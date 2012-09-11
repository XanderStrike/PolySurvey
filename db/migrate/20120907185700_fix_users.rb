class FixUsers < ActiveRecord::Migration
  def up
    add_column :results, :email, :string
    add_column :results, :password, :string
    add_column :results, :survey_finished?, :boolean
    add_column :results, :admin?, :boolean
    add_column :results, :uid, :integer
  end
  def down
    remove_column :results, :email
    remove_column :results, :password
    remove_column :results, :survey_finished?
    remove_column :results, :admin?
    remove_column :results, :uid
  end
end
