require 'rubygems'  
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.new  
scheduler.cron '34 18 * * *' do  
  puts "xxxx"
end  
  
scheduler.join