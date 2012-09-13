class ChangeResults < ActiveRecord::Migration
  def up
    remove_column :results, :q1
    remove_column :results, :q2
    remove_column :results, :q3
    remove_column :results, :q4
    remove_column :results, :q5
    remove_column :results, :q6
    remove_column :results, :q7
    remove_column :results, :q8
    remove_column :results, :q9
    remove_column :results, :q10
    remove_column :results, :q11
    remove_column :results, :q12
    remove_column :results, :q13
    remove_column :results, :q14
    remove_column :results, :q15
    remove_column :results, :psq1
    remove_column :results, :psq2
    remove_column :results, :psq3
    remove_column :results, :psq4
    remove_column :results, :psq5
    remove_column :results, :psq6
    remove_column :results, :psq7
    remove_column :results, :psq8
    remove_column :results, :psq9
    remove_column :results, :psq10
    remove_column :results, :psq11
    remove_column :results, :psq12
    remove_column :results, :psq13
    remove_column :results, :psq14
    remove_column :results, :psq15
    remove_column :results, :psq16
    remove_column :results, :psq17
    remove_column :results, :psq18
    remove_column :results, :psq19
    remove_column :results, :psq20
    remove_column :results, :psq21
    remove_column :results, :psq22
    remove_column :results, :psq23
    remove_column :results, :psq24
    remove_column :results, :psq25
    remove_column :results, :psq26
    remove_column :results, :psq27
    remove_column :results, :psq28
    remove_column :results, :psq29
    remove_column :results, :psq30
    remove_column :results, :psq31
    remove_column :results, :psq32
    remove_column :results, :psq33
    remove_column :results, :psq34
    remove_column :results, :psq35
    remove_column :results, :psq36
    remove_column :results, :psq37
    remove_column :results, :psq38
    remove_column :results, :psq39
    add_column :results, :n01, :integer
    add_column :results, :n02, :integer
    add_column :results, :n03, :integer
    add_column :results, :n04, :integer
    add_column :results, :n05, :integer
    add_column :results, :n06, :integer
    add_column :results, :n07, :integer
    add_column :results, :n08, :integer
    add_column :results, :n09, :integer
    add_column :results, :n10, :integer
    add_column :results, :n11, :integer
    add_column :results, :n12, :integer
    add_column :results, :n13, :integer
    add_column :results, :n14, :integer
    add_column :results, :n15, :integer
    add_column :results, :q01, :integer
    add_column :results, :q02, :integer
    add_column :results, :q03, :integer
    add_column :results, :q04, :integer
    add_column :results, :q05, :integer
    add_column :results, :q06, :integer
    add_column :results, :q07, :integer
    add_column :results, :q08, :integer
    add_column :results, :q09, :integer
    add_column :results, :q10, :integer
    add_column :results, :q11, :integer
    add_column :results, :q12, :integer
    add_column :results, :q13, :integer
    add_column :results, :q14, :integer
    add_column :results, :q15, :integer
    add_column :results, :q16, :integer
    add_column :results, :q17, :integer
    add_column :results, :q18, :integer
    add_column :results, :q19, :integer
    add_column :results, :q20, :integer
    add_column :results, :q21, :integer
    add_column :results, :q22, :integer
    add_column :results, :q23, :integer
    add_column :results, :q24, :integer
    add_column :results, :q25, :integer
    add_column :results, :q26, :integer
    add_column :results, :q27, :integer
    add_column :results, :q28, :integer
    add_column :results, :q29, :integer
    add_column :results, :q30, :integer
    add_column :results, :q31, :integer
    add_column :results, :q32, :integer
  end

  def down
  end
end
