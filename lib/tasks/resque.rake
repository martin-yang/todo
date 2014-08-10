require "resque/tasks"

task "resque:setup" => :environment

I18n.locale = :zh_cn