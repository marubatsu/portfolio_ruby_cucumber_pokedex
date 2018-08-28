require 'report_builder'

Before do

end

After do

end

at_exit do

  time = Time.now
  time_report = Time.now.strftime("%Y%m%d%H%M%S") 

  ReportBuilder.configure do |config|
    config.input_path = 'results'
    config.report_path = "results/html_report_#{time_report}"
    config.report_tabs = %w[Overview Features Scenarios Errors]
    config.report_title = "Pokédex Test Results - #{time}"
    config.include_images = true
    config.color = "green"
  end

  ReportBuilder.build_report

end