class Statistics::OfTask
  def self.by_month(date)
    year,month=date.year,date.month
    Time.days_in_month(month).times.map{|num| by_date(Time.local(year,month,num+1))}
  end

  def self.by_date(date)
    tasks=::TaskDate.tasks_of(BuildTaskDate.build(date))
    {date: date.strftime("%Y-%m-%d"),task_sum: tasks.size,going: of_state(tasks,"new"),over: of_state(tasks,"over")}
  end

  private
  def self.of_state(tasks,state)
    tasks.where(state: state).size rescue 0
  end

end
