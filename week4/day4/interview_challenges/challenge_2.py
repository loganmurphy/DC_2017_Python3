# Challenge 2
#
# The moon goes through phases because it orbits the earth and the sun hits it differently at different places in its orbit. This means that, depending on where it is in its orbit, you might see a full moon, right quarter moon, or even "no" moon (new moon) at all. It takes 27.3 days for the moon to orbit the Earth, but the actual phase difference from one full moon to the next is 29.5 days because the earth cruises a cool 45 million miles around the sun in that 27.3 days. It takes 2.2 days for the the moon to make up for that distance and get all the way back to where you last saw a full moon. Whenever the moon is full twice in one month, the second one is called a "blue moon." This last happened in July of 2015 on the 1st and 31st. The next time is January of 2018 (same days). You can research the timing, otherwise you can assume midnight. Write a program that determines how many "blue moons" there will be in third milenia (2000-2999)?
#
# If you want to be really, really specific, the lunar month varies depending on the shape of the sun and moons orbit. The average is 29 days, 12 hours, and 44 minutes.


# The total is 424

import datetime


# This calculates the number of blue moons  from 2015 to 2999
start = datetime.datetime(2015, 6, 1, 12, 44)
end = datetime.datetime(2999, 1, 1)
moon_orbit = datetime.timedelta(days=29.5)

blue_moon_counter = 0

while start < end:
    current_month = start.month
    start += moon_orbit
    new_month = start.month
    if current_month == new_month:
        blue_moon_counter += 1

print(blue_moon_counter)

# This calculates the total blue moons from 1999 - 2999
start = datetime.datetime(1999, 1, 2, 12, 44)
end = datetime.datetime(2999, 1, 1, 12, 44)
moon_orbit = datetime.timedelta(days=29.5)

blue_moon_counter = 0

while start < end:
    current_month = start.month
    start += moon_orbit
    new_month = start.month
    if current_month == new_month:
        blue_moon_counter += 1

print(blue_moon_counter)


# Challenge 2b
#
# Given the information in Challenge 2, sometimes February gets skipped because a full moon lands on the 31st of January and the 1st or 2nd of March. But... there are leap years which can save certain Februaries. How many times will Febraury get skipped in the third millenia (2000-2999)? If you are really looking for trouble, figure out how the exact years that February has a leap year AND no full moon in the same time span.

# This calculates the total blue moons from 1999 - 2999
start = datetime.datetime(1999, 1, 2, 12, 44)
end = datetime.datetime(2999, 1, 1, 12, 44)
moon_orbit = datetime.timedelta(days=29.5)

feb_skipped = 0

while start < end:
    current_month = start.month
    start += moon_orbit
    new_month = start.month
    if current_month == new_month and current_month == 1 or current_month == new_month and current_month == 3:
        feb_skipped += 1
        
print(feb_skipped)
