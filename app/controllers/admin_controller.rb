class AdminController < ApplicationController

  require 'csv'
 
  def show
  end

  def output_results
    results = Results.all

    CSV.open("public/political_survey_results.csv", "w") do |csv|
    unless results.empty?    
        # header row
        csv << results.first.attributes.keys
        # data row
        results.each do |result|

          puts "result.attributes.values.inspect: #{result.attributes.values.inspect}"

          csv << result.attributes.values
        end
      end
    end

    send_file "public/political_survey_results.csv", :type => "text/csv", :x_sendfile => true

#    render show
  end
end
