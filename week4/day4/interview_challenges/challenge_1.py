# Challenge 1
# January 1, 1701 was a Saturday. How many Saturdays were on the first of the month between 1701 and 1800?
# The answer is 4521

import datetime

start = datetime.datetime(1701, 1, 1)
next_day = start + datetime.timedelta(days=1)
end = datetime.datetime(1800, 1, 1)
add_day = datetime.timedelta(days=1)
day_counter = 1
total_saturdays = 1

while next_day < end:
    if day_counter == 6:
        total_saturdays += 1
    if day_counter < 8:
        next_day += add_day
        day_counter += 1
    else:
        day_counter = 0
    
print(total_saturdays)
