class WorkDate < ActiveRecord::Base
  attr_accessible :start_hour, :end_hour, :created_at, :updated_at

  def take_off_duty_date
    now_time = Time.now
    Time.local(now_time.year,now_time.month,now_time.day,self.end_hour,0,0).strftime('%Y-%m-%d %H:%M:%S')
  end
end