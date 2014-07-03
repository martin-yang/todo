# -*- coding: utf-8 -*-
require 'spec_helper'

describe TaskDate do
  it "take tasks in now time" do
    TaskDate.current_tasks.size.should == 1
  end
end
