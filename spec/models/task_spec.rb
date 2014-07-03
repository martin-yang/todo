# -*- coding: utf-8 -*-
require 'spec_helper'

describe Task do
  before do
    FactoryGirl.create(:task)
  end
  it "create task and validate task size" do
    Task.all.size.should == 2
  end

  it "nil content in create task" do
    task=Task.create({})
    task.should have(1).error_on(:content)
  end

  it "take tasks of root" do
    Task.roots.first.content.should == "root task"
  end

  it "take task children in root tasks" do
    Task.roots.first.children.first.content.should == "first task children"
  end

  it "new task state is new" do
    Task.first.state.should == "new"
  end

  it "over task state is over" do
    Task.first.over.state.should == "over"
  end
end
