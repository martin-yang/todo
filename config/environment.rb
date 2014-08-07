# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Todo::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:              'smtp.163.com',
  port:                 25,
  domain:               'www.163.com',
  authentication:       'login',
  user_name:            'task_platform@163.com',
  password:             'yang408290909',
  enable_starttls_auto: false  }
