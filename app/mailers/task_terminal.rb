class TaskTerminal < ActionMailer::Base
  default from: "task_platform@163.com"

  def today_notice
    @today_tasks = BuildTodayTasksDataStyle.execute(Time.local(2014,7,3))
    @today_complete_detail = Statistics::TakeTasksNumByDate.new(Time.local(2014,7,3)).execute("take_today")
    
    mail(to: "408290909@qq.com", subject: (I18n.t "email.title",today: Time.local(2014,7,3).strftime("%Y-%m-%d")))
  end
end
