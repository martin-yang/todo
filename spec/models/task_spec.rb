# -*- coding: utf-8 -*-
require 'spec_helper'

describe Task do
  before do
    FactoryGirl.create(:task)
  end
  it "create task and validate task size" do
    Task.all.size.should == 1
  end

  it "nil content in create task" do
    task=Task.create({})
    task.should have(1).error_on(:content)
  end

  it "new task state is new" do
    Task.first.state.should == "new"
  end

  it "over task state is over" do
    task=Task.first
    task.over
    task.state.should == "over"
  end
  
  it "delete task and include children" do
    Task.first.delete
    Task.all.size.should == 0
  end
end
