# -*- coding: utf-8 -*-
require 'spec_helper'

describe "SendTaskMail" do
  before do
    FactoryGirl.create(:task)
  end

  it "send mail" do
    TaskTerminal.today_notice.deliver
  end

end