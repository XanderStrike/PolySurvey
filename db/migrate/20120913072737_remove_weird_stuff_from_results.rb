class RemoveWeirdStuffFromResults < ActiveRecord::Migration
  def up
    remove_column :results, :survey_finished?
    remove_column :results, :admin?
    remove_column :results, :uid
  end

  def down
  end
end
