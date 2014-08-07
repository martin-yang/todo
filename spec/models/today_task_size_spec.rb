# -*- coding: utf-8 -*-
require 'spec_helper'

describe "TodayTaskSizeSpec" do
  before do
    FactoryGirl.create(:task)
  end

  it "take today Task size" do
    Search::TakeTasksByDate.new(Time.local(2014,7,3)).execute.should == {date: "2014-07-03",tasks: [{id: 1,content: "root task",state: "进行中"}]}
  end

end
