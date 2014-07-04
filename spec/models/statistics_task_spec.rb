# -*- coding: utf-8 -*-
require 'spec_helper'

describe Statistics::OfTask do
  before do
    FactoryGirl.create(:task)
  end

  it "take tasks number of different state by now time" do
    Statistics::OfTask.by_date(Time.local(2014,7,3)).should == {date: "2014-07-03",task_sum: 1,going: 1,over: 0}
  end
end
