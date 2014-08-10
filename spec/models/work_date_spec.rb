# -*- coding: utf-8 -*-
require 'spec_helper'

describe WorkDate do
  before do
    FactoryGirl.create(:work_date)
  end

  it "take off duty" do
    WorkDate.first.take_off_duty_date.eql?("#{Time.now.strftime('%Y-%m-%d')} 18:00:00")
  end
end