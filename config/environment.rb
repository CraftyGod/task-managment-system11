# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 465,
  :domain => "gmail.com",
  :authentication => :login,
  :user_name => "taskmanagmentsystem11@gmail.com",
  :password => "TaskManagmentSys11",
  :ssl => true,
  :tsl => true,
  :enable_starttls_auto => true
}
