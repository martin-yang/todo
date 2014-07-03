FactoryGirl.define do
  factory :task do
    content 'first task children'
    association :parent, factory: :root_task
  end

  factory :root_task,class: Task do
    content 'root task'
    parent nil
  end
end
