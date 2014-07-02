class Task < ActiveRecord::Base
  attr_accessible :content,:created_at,:updated_at

  validates_presence_of :content
end
