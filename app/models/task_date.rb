class TaskDate < ActiveRecord::Base
  attr_accessible :year,:month,:day,:created_at,:updated_at
  has_many :tasks

  def self.today_tasks
    now_time=Time.now
    tasks_of({year: now_time.year,month: now_time.month,day: now_time.day})
  end

  # parameter date -->{year: year,month: month,day: day}
  def self.tasks_of(date)
    self.where(date).first.tasks rescue []
  end
end
