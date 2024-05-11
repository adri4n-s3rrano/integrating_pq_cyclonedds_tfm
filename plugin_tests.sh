#!/bin/bash

# publisher and consumer programs
publisher_program="/home/adrian/project/cyclonedds/build/bin/HelloworldPublisher"
consumer_program="/home/adrian/project/cyclonedds/build/bin/HelloworldSubscriber"

# mean calculation
calc_mean() {
    awk '{ sum += $1 } END { printf "%.5f\n", sum / NR }'
}

# standard deviation calculation
calc_standard_deviation() {
    awk "{ sum += (\$1 - mean)^2 } END { printf \"%.5f\n\", sqrt(sum / NR) }" mean=$1
}

times=()
for ((i = 1; i <=100; i++)); do
    start=$(date +%s.%N)
    $publisher_program > /dev/null 2>&1 & $consumer_program > /dev/null 2>&1 &
    wait
    end=$(date +%s.%N)
    time=$(echo "$end - $start" | bc)
    times+=("$time")
done


mean=$(printf '%s\n' "${times[@]}" | calc_mean)
standard_deviation=$(printf '%s\n' "${times[@]}" | calc_standard_deviation "$mean")

# results
echo "mean time: $mean seconds"
echo "standar deviation: $standard_deviation seconds"
