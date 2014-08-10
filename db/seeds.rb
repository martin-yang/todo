# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

WorkDate.create(start_hour: "9",end_hour: "18")
TaskDate.create(year: 2014,month: 7,day: 3)
30.times do |num|
  Task.create(content: "TASK#{num+1}",task_date: TaskDate.first)
end