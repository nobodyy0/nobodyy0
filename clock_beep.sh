#!/usr/bin/env bash

TIME_MINUTE=$(date +%M) #those variables will store the time information and will be updated every hour
TIME_SECOND=$(date +%S) #in the one called TIME_MINUTE, current minutes are going to be stored
                        #same with the one called TIME_SECOND
                        
function looping { #this thing calculates the time left to beep
OFFSET_MINUTE=$((59-TIME_MINUTE))
OFFSET_MINUTES_IN_SECONDS=$((60*OFFSET_MINUTE)) #we convert the minutes left till the next hour to seconds
OFFSET_SECOND=$((59-TIME_SECOND))
TOTAL_SECONDS_TO_WAIT_UNTIL_NEXT_BEEPS=$((OFFSET_MINUTES_IN_SECONDS+OFFSET_SECOND))
echo time left until next beeps: $TOTAL_SECONDS_TO_WAIT_UNTIL_NEXT_BEEPS
}

function initiate { #and this right here beeps the thing when the script is launched
beep -f 1900 -l 200 #this can obviously be skipped as it does not
beep -f 2100 -l 200 #interfere with the rest of the script
beep -f 2300 -l 200
sleep 0.2
beep -f 2000 -l 600
sleep 0.05
beep -f 2200 -l 600
}

initiate
while true #this is a simple loop, it should not break, if it does, then idfk
do
    looping
    sleep $TOTAL_SECONDS_TO_WAIT_UNTIL_NEXT_BEEPS
    beep -f 2000 -l 300
    sleep 0.05
    beep -f 2000 -l 300
done
