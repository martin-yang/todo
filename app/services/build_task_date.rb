module BuildTaskDate
  def self.build(date)
    {year: date.year,month: date.month,day: date.day}
  end
end
