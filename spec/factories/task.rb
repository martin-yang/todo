FactoryGirl.define do
  factory :task do
    content 'first task children'
    association :parent, factory: :root_task
  end

  factory :root_task,class: Task do
    content 'root task'
    parent nil
    association :task_date, factory: :task_date
  end

  factory :task_date do
    year 2014
    month 7
    day 3
  end
end
