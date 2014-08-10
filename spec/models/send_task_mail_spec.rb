# -*- coding: utf-8 -*-
require 'spec_helper'

describe "SendTaskMail" do
  before do
    FactoryGirl.create(:task)
    20.times do |num|
      Task.create(content: "TASKkkkkkkkkkkkkkkkkklkjalksdjflasjdflkajslkdfjlaksdjflkads#{num+1}",task_date: TaskDate.first)
    end
  end

  it "send mail" do
    TaskTerminal.today_notice.deliver
  end

end