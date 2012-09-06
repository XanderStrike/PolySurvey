class AdminController < ApplicationController
  def new
  end

  def output_results
    results = Result.all

    user_csv = FasterCSV.generate do |csv|
      # header row
      csv << results.first.columns.map(&:name)
      # data row
      results.each do |result|
        csv << result.columns.map(&:value)
      end
    end

    send_data(user_csv, :type => 'test/csv', :filename => 'user_record.csv')
  end
end
