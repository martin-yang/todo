FactoryGirl.define do

  factory :task,class: Task do
    content 'root task'
    association :task_date, factory: :task_date
  end

  factory :task_date do
    year 2014
    month 7
    day 3
  end
end
