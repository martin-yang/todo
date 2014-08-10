class TimingSendTasksMail
  @queue = :timing_send_tasks_mail
  def self.perform
    TaskTerminal.today_notice.deliver
  end
end