class AddExtranumericsToResults < ActiveRecord::Migration
  def change
    remove_column :results, :q22
    add_column :results, :q22a, :string
    add_column :results, :q22b, :string
    add_column :results, :q22c, :string
    add_column :results, :q22d, :string
    add_column :results, :q22e, :string
    add_column :results, :q30a, :string
    add_column :results, :q32a, :string
    change_column :results, :n01, :string
    change_column :results, :n02, :string
    change_column :results, :n03, :string
    change_column :results, :n04, :string
    change_column :results, :n05, :string
    change_column :results, :n06, :string
    change_column :results, :n07, :string
    change_column :results, :n08, :string
    change_column :results, :n09, :string
    change_column :results, :n10, :string
    change_column :results, :n11, :string
    change_column :results, :n12, :string
    change_column :results, :n13, :string
    change_column :results, :n14, :string
    change_column :results, :n15, :string
    change_column :results, :q01, :string
    change_column :results, :q02, :string
    change_column :results, :q03, :string
    change_column :results, :q04, :string
    change_column :results, :q05, :string
    change_column :results, :q06, :string
    change_column :results, :q07, :string
    change_column :results, :q08, :string
    change_column :results, :q09, :string
    change_column :results, :q10, :string
    change_column :results, :q11, :string
    change_column :results, :q12, :string
    change_column :results, :q13, :string
    change_column :results, :q14, :string
    change_column :results, :q15, :string
    change_column :results, :q16, :string
    change_column :results, :q17, :string
    change_column :results, :q18, :string
    change_column :results, :q19, :string
    change_column :results, :q20, :string
    change_column :results, :q21, :string
    change_column :results, :q23, :string
    change_column :results, :q24, :string
    change_column :results, :q25, :string
    change_column :results, :q26, :string
    change_column :results, :q27, :string
    change_column :results, :q28, :string
    change_column :results, :q29, :string
    change_column :results, :q30, :string
    change_column :results, :q31, :string
    change_column :results, :q32, :string
    change_column :results, :match_scenario, :string
    change_column :results, :poll_scenario, :string
    change_column :results, :vote, :string
  end
end
