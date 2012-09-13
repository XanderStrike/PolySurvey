class AdminController < ApplicationController

  require 'csv'
  
  def new
  end

  def show
  end

  def output_results
    results = ActiveRecord::Results.all

    unless results.empty?
      user_csv = CSV.generate do |csv|
        # header row
        csv << results.first.columns.map(&:name)
        # data row
        results.each do |result|
          csv << result.columns.map(&:value)
        end
      end
    end

    send_data(user_csv, :type => 'test/csv', :filename => 'user_records.csv')
  end
end
