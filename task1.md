# Task

1. If you look at the clock and the time is 3:15, what is the angle between the hours and the minutes hands?
   If this task is too easy for you, try to implement a common solution for any time (3:15, 3:20, 4:30 ... etc )

# Solution

360/12 \* | h - min/5 | - where h - hours, min - minutes.

There is one condition: min%5 == 0
