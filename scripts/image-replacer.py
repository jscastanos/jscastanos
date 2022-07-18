# Based on my current time, I"m going to replace my owl svg to either Day, Afternoon or Night
# This script will be paired with a github action to attain the desired outcome.

from datetime import datetime, time
from fileinput import FileInput

import pytz


# What is my local time?
def localOwlTime():
    tz = pytz.timezone('Asia/Manila')
    ph_time = datetime.now(tz).time()

    # time constraint
    morning_begin = time(4, 00)
    morning_end = time(12, 00)

    afternoon_begin = time(12, 1)
    afternoon_end = time(17, 00)

    # check time
    if ph_time >= morning_begin and ph_time <= morning_end:
        return 'Day Owl'
    elif ph_time >= afternoon_begin and ph_time <= afternoon_end:
        return 'Afternoon Owl'
    else:
        return 'Night Owl'


# our owl
owl = localOwlTime()
newImage = f'<img id="owl-svg" align="right" src="./images/{owl}.svg" height="250">'

# log our owl
print(owl)
print(newImage)

# now edit readme file


# replace our <img src />
def replaceOwl():
    with FileInput('../README.md', inplace=True) as f:

        for line in f:
            if(line.startswith('<img id="owl-svg"')):
                print(line.replace(line, newImage))
            else:
                print(line, end='')

    print('image replaced!')


replaceOwl()
