#! bin/bash

if [ $SCHEDULE -eq '0 21 * * *' ]
then 
  echo "::set-output name=COMMIT_MESSAGE::Wake Up Owl"
elif [ $SCHEDULE -eq '0 4 * * *' ]
then 
  echo "::set-output name=COMMIT_MESSAGE::Tired Owl"
elif [ $SCHEDULE -eq '0 12 * * *' ]
then 
  echo "::set-output name=COMMIT_MESSAGE::Sleeping Owl"
else
  echo "::set-ouput name=COMMIT_MESSAGE::Replaced Owl"
fi
