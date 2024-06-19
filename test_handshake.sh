#!/bin/bash

# Integrating Post Quantum Cryptography on a CycloneDDS Communication
# Author: Adrian Serrano Navarro

n_iter=125
run_dir="./cyclonedds/build"
# publisher and consumer programs
publisher_program="./bin/HelloworldPublisher"
subscriber_program="./bin/HelloworldSubscriber"

cd $run_dir

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/lib
export CYCLONEDDS_URI=../../config/cyclonedds/custom_auth_plugin.xml
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)/../../src/build/lib


pkill -f HelloworldPublisher
pkill -f HelloworldSubscriber

for ((i = 1; i <= n_iter; i++)); do
    pkill -f HelloworldPublisher
    pkill -f HelloworldSubscriber

    $subscriber_program & 
    $publisher_program &  
    publisher_pid=$!
 
    wait 

    sleep 0.1

done
