require 'rubygems'  
require 'rufus/scheduler'

# init rails app
require File.expand_path('../../config/application', __FILE__)
Todo::Application.initialize!

scheduler = Rufus::Scheduler.new  
scheduler.cron "30 19 * * *" do  
  p "-----start---"
  Resque.enqueue(TimingSendTasksMail)
end  
  
scheduler.join