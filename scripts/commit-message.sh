#! bin/bash

if [ $SCHEDULE -eq '0 21 * * *' ]
then 
  echo "COMMIT_MESSAGE=Wake Up Owl" >> $GITHUB_ENV
elif [ $SCHEDULE -eq '0 4 * * *' ]
then 
  echo "COMMIT_MESSAGE=Tired Owl" >> $GITHUB_ENV
elif [ $SCHEDULE -eq '0 12 * * *' ]
then 
  echo "COMMIT_MESSAGE=Sleeping Owl" >> $GITHUB_ENV
else
  echo "COMMIT_MESSAGE=Owl Owl" >> $GITHUB_ENV
fi
