# ch06 The Book of Ruby - http://www.sapphiresteel.com

def dayIs(aDay)
  working_overtime = true
  if aDay == 'Saturday' || aDay == 'Sunday' and !working_overtime
    daytype = 'holiday'
    puts('Hurrah!')
  else
    daytype = 'working day'
  end
  daytype
end

# Different operators produce different reeults
def dayIs2(aDay)
  working_overtime = true
  # note: can't use 'not' here!
  if aDay == 'Saturday' || aDay == 'Sunday' &&  !working_overtime
    daytype = 'holiday'
    puts('Hurrah!')
  else
    daytype = 'working day'
  end
  daytype
end

day1 = 'Monday'
day2 = 'Saturday'
print(day1 + ' is a ' + dayIs(day1) + "\n")
print(day2 + ' is a ' + dayIs(day2) + "\n")
print(day1 + ' is a ' + dayIs2(day1) + "\n")
print(day2 + ' is a ' + dayIs2(day2) + "\n")
