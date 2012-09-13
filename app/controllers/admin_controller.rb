class AdminController < ApplicationController

  require 'csv'
 
  def show
  end

  def output_results
    results = ActiveRecord::Results.all

    user_csv = CSV.generate do |csv|
    unless results.empty?
      
        # header row
        csv << results.first.columns.map(&:name)
        # data row
        results.each do |result|
          csv << result.columns.map(&:value)
        end
      end
#    end

    csv << ['header1', 'header2', 'header3']
    end
    send_data(user_csv, :type => 'test/csv', :filename => 'user_records.csv')
  end
end
