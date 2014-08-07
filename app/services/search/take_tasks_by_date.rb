module Search
  class TakeTasksByDate
    attr_accessor :year
    attr_accessor :month
    attr_accessor :day
    attr_accessor :date

    # date type is datetime
    def initialize(date)
      self.date = date
      self.year = date.year
      self.month = date.month
      self.day = date.day
    end

    def execute
      tasks = ::TaskDate.where(self.attributes).first.tasks rescue []
      def tasks.by_state(key)
        return [] if self.size.eql?(0)
        build_tasks_data_style(self.where(state: key))
      end
      build_tasks_data_style(tasks)
    end

    def attributes
      {year: self.year, month: self.month, day: self.day}
    end

    def task_data_style(task)
      {id: task.id,content: task.content,state: (I18n.t "task.state.#{task.state}")}
    end

    def build_tasks_data_style(tasks)
      {date: date.strftime('%Y-%m-%d'),tasks: tasks.map{|task| task_data_style(task)}}
    end
  end
end
