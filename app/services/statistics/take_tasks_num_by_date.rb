module Statistics
  class TakeTasksNumByDate
    attr_accessor :year
    attr_accessor :month
    attr_accessor :day

    # date type is datetime
    def initialize(date)
      self.year = date.year
      self.month = date.month
      self.day = date.day
    end

    # date_scope is a month or today
    def execute(date_scope)
      send(date_scope)
    end

    private
    def take_month
      Time.days_in_month(month).times.map{|num| take_data_style(Time.local(year,month,num+1))}
    end

    def take_today
      take_data_style(Time.local(year,month,day))
    end

    def take_data_style(date)
      tasks = Search::TakeTasksByDate.new(date).execute
      {date: date.strftime("%Y-%m-%d"),task_sum: tasks.size,going: tasks.by_state("new").size,over: tasks.by_state("over").size}
    end
  end
end