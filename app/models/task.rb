class Task < ActiveRecord::Base
  attr_accessible :content,:state,:task_date,:task_date_id,:created_at,:updated_at
  belongs_to :task_date

  validates_presence_of :content

  state_machine :state,initial: :new do
    event :over do
      transition :new => :over
    end
  end
end
