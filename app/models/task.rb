class Task < ActiveRecord::Base
  has_ancestry
  attr_accessible :content,:created_at,:updated_at

  validates_presence_of :content
end
