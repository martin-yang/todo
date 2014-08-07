module Search
  class TakeTasksByDate
    attr_accessor :year
    attr_accessor :month
    attr_accessor :day

    # date type is datetime
    def initialize(date)
      self.year = date.year
      self.month = date.month
      self.day = date.day
    end

    def execute
      tasks = ::TaskDate.where(self.attributes).first.tasks rescue []
      def tasks.by_state(state)
        self.where(state: state) rescue []
      end
      tasks      
    end

    def attributes
      {year: self.year, month: self.month, day: self.day}
    end

    def task_data_style(task)
      {id: task.id,content: task.content,state: (I18n.t "task.state.#{task.state}")}
    end
  end
end
