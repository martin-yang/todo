# -*- coding: utf-8 -*-
require 'spec_helper'

describe Task do
  before do
    FactoryGirl.create(:task)
  end
  it "create task and validate task size" do
    sleep 3
    Task.all.size.should == 1
  end

  it "nil content in create task" do
    task=Task.create({})
    task.should have(1).error_on(:content)
  end
end
