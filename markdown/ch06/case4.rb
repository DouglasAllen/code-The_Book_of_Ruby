# ch06 The Book of Ruby - http://www.sapphiresteel.com

salary = 2_000_000
season = 'summer'

happy = case
        when salary > 10_000 && season == 'summer' then
          puts('Yes, I really am happy!')
          'Very happy'
        when salary > 500_000 && season == 'spring' then 'Pretty happy'
        else puts('miserable')
        end

puts(happy)
