class TaskDate < ActiveRecord::Base
  attr_accessible :year, :month, :day, :created_at, :updated_at
  has_many :tasks

  # parameter date -->{year: year,month: month,day: day}
  def self.tasks_of(date)
    self.where(date).first.tasks rescue []
  end
end
