class RemoveMisplacedAttrsFromResults < ActiveRecord::Migration
  def up
    remove_column :results, :email
    remove_column :results, :password
    remove_column :results, :survey_finished
    remove_column :results, :admin
  end

  def down
    add_column :results, :email
    add_column :results, :password
    add_column :results, :survey_finished
    add_column :results, :admin
  end

end
