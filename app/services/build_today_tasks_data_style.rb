class BuildTodayTasksDataStyle
  def self.execute(date)
    tasks = Search::TakeTasksByDate.new(date).execute
    {date: date.strftime('%Y-%m-%d'),tasks: tasks.map{|task| build_data_style(task)}}
  end

  private
  def self.build_data_style(task)
  	{id: task.id,content: task.content,state: (I18n.t "task.state.#{task.state}")}
  end
end