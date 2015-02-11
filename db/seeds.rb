schedule = IceCube::Schedule.new
schedule.add_recurrence_rule IceCube::Rule.weekly.day(:tuesday).until(3.months.from_now)
schedule.each_occurrence { |t| Masterclass.create(date: t) }
