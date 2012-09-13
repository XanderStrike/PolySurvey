class RemoveMisplacedAttrsFromResults < ActiveRecord::Migration
  def up
    remove_column :results, :email
    remove_column :results, :password
    remove_column :results, :survey_finished
    remove_column :results, :admin
  end

  def down
    add_column :results, :email, :string
    add_column :results, :password, :string
    add_column :results, :survey_finished, :boolean
    add_column :results, :admin, :boolean
  end

end
