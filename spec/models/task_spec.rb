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
end
