# -*- coding: utf-8 -*-
require 'spec_helper'

describe TaskDate do
  before do
    FactoryGirl.create(:task)
  end
  it "take tasks in now time" do
    TaskDate.tasks_of(Search::TakeTasksByDate.new(Time.local(2014,7,3)).attributes).size.should == 1
  end

  it "search tasks by time" do
    TaskDate.tasks_of(Search::TakeTasksByDate.new(Time.local(2014,7,2)).attributes).size.should == 0
  end
end
