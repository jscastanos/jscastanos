#! bin/bash

# print what we got
echo "Current schedule is $SCHEDULE" 

if [ "$SCHEDULE" == "0 21 * * 1-5" ]; then 
  echo "COMMIT_MESSAGE=Wake Up Owl" >> $GITHUB_ENV
elif [ "$SCHEDULE" == "0 4 * * 1-5" ]; then 
  echo "COMMIT_MESSAGE=Tired Owl" >> $GITHUB_ENV
elif [ "$SCHEDULE" == "0 15 * * 1-5" ]; then 
  echo "COMMIT_MESSAGE=Sleeping Owl" >> $GITHUB_ENV
else
  echo "COMMIT_MESSAGE=Owl Owl" >> $GITHUB_ENV
fi
