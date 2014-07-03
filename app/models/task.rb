class Task < ActiveRecord::Base
  has_ancestry
  attr_accessible :content,:state,:created_at,:updated_at

  validates_presence_of :content

  state_machine :state,initial: :new do
    event :over do
      transition :new => :over
    end
  end
end
