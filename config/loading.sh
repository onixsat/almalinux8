#!/bin/bash
progressBarWidth=20
progressBar () {

  # Calculate number of fill/empty slots in the bar
  progress=$(echo "$progressBarWidth/$taskCount*$tasksDone" | bc -l)
  fill=$(printf "%.0f\n" $progress)
  if [ $fill -gt $progressBarWidth ]; then
    fill=$progressBarWidth
  fi
  empty=$(($fill-$progressBarWidth))

  # Percentage Calculation
  percent=$(echo "100/$taskCount*$tasksDone" | bc -l)
  percent=$(printf "%0.2f\n" $percent)
  if [ $(echo "$percent>100" | bc) -gt 0 ]; then
    percent="100.00"
  fi

  # Output to screen
  printf "\r["
  printf "%${fill}s" '' | tr ' ' ▉
  printf "%${empty}s" '' | tr ' ' ░
  printf "] $percent%% - $text "
}

## Collect task count
taskCount=333
tasksDone=0

while [ $tasksDone -le $taskCount ]; do

  # Do your task
  (( tasksDone += 1 ))

  # Add some friendly output
  text=$(echo "somefile-$tasksDone.dat")

  # Draw the progress bar
  progressBar $taskCount $taskDone $text

  sleep 0.01
done

echo
