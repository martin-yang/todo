class Statistics::OfTask
  def self.by_date(date)
    tasks=::TaskDate.tasks_of({year: date.year,month: date.month,day: date.day})
    {date: date.strftime("%Y-%m-%d"),task_sum: tasks.size,going: of_state(tasks,"new"),over: of_state(tasks,"over")}
  end

  private
  def self.of_state(tasks,state)
    tasks.where(state: state).size rescue 0
  end

end
