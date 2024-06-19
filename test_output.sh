#!/bin/bash

# Integrating Post Quantum Cryptography on a CycloneDDS Communication
# Author: Adrian Serrano Navarro

n_iter=125
test_name="dh"
run_dir="./cyclonedds/build"
# publisher and consumer programs
publisher_program="./bin/HelloworldPublisher"
subscriber_program="./bin/HelloworldSubscriber"
target_dir="../../results"
target_file="$target_dir/tests_output_$test_name.csv"
# define boolean variable or bash equivalent
save_csv=0

# mean calculation
calc_mean() {
    awk '{ sum += $1 } END { printf "%.5f\n", sum / NR }'
}

# standard deviation calculation
calc_standard_deviation() {
    awk "{ sum += (\$1 - mean)^2 } END { printf \"%.5f\n\", sqrt(sum / NR) }" mean=$1
}

cd $run_dir

if [ ! -d "$target_dir" ]; then
    mkdir -p $target_dir
fi

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/lib
export CYCLONEDDS_URI=../../config/cyclonedds/custom_auth_plugin.xml
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/../../src/build/lib

publisher_output_file="$target_dir/publisher_output_$test_name.txt"
subscriber_output_file="$target_dir/subscriber_output_$test_name.txt"

> "$publisher_output_file"
> "$subscriber_output_file"

if [ $save_csv -eq 1 ]; then
    echo "Saving results to $target_file"
fi

pkill -f HelloworldPublisher
pkill -f HelloworldSubscriber

times=()
for ((i = 1; i <= n_iter; i++)); do
    pkill -f HelloworldPublisher
    pkill -f HelloworldSubscriber
    echo "-----------------Iteration $i-----------------" >> $publisher_output_file
    echo "-----------------Iteration $i-----------------" >> $subscriber_output_file

    $subscriber_program >> "$subscriber_output_file" 2>&1 &
    start=$(date +%s.%N)
    $publisher_program >> "$publisher_output_file" 2>&1
    publisher_pid=$!
    wait
    end=$(date +%s.%N)

    time=$(echo "$end - $start" | bc)
    times+=("$time")

    echo "$i,$time" >> $target_file
    if [ $save_csv -eq 1 ]; then
        echo "Iteration $i: $time seconds"
    fi

    sleep 0.1

done


mean=$(printf '%s\n' "${times[@]}" | calc_mean)
standard_deviation=$(printf '%s\n' "${times[@]}" | calc_standard_deviation "$mean")

# results
echo "mean time: $mean seconds"
echo "standard deviation: $standard_deviation seconds"