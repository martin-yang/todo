module Statistics
  class TakeTasksSpendTime
    def self.execute(date)
      tasks = ::TaskDate.where(Search::TakeTasksByDate.new(date).attributes).first.tasks.order("updated_at desc") rescue []
      tasks.map{|task| build_data_style(task)}
    end

    private
    def self.build_data_style(task)
      {content: task.content,spend_time: build_spend_time_by(task.state)}
    end

    def self.build_spend_time_by(state)
      return "going" unless state.eql?("over")
      0
    end
  end
end