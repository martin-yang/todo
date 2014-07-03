# -*- coding: utf-8 -*-
require 'spec_helper'

describe TaskDate do
  before do
    FactoryGirl.create(:task)
  end
  it "take tasks in now time" do
    TaskDate.today_tasks.size.should == 1
  end

  it "search tasks by time" do
    TaskDate.tasks_of({year: 2014,month: 7,day: 2}).size.should == 0
  end
end
