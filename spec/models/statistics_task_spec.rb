# -*- coding: utf-8 -*-
require 'spec_helper'

describe Statistics::Task do
  it "take tasks number of different state by now time" do
    Statistics::Task.by_today.should == {date: "2014-7-3",task_sum: 2,going: 2,over: 0}
  end
end
