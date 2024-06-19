# Integrating Post Quantum Cryptography on a CycloneDDS Communication
# Author: Adrian Serrano Navarro

import subprocess
import threading
import statistics


# publisher and consumer programs
publisher_program = "/home/adrian/project/cyclonedds/build/bin/HelloworldPublisher"
consumer_program = "/home/adrian/project/cyclonedds/build/bin/HelloworldSubscriber"

# file to store the results
target_file = 'output.csv'

# Calculate the execution time
def run_program(program, times, index):
    process = subprocess.Popen(["time", "-p", program], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    process.wait()
    real_time = process.communicate()[1].decode().splitlines()[0].split()[1]
    times.append(float(real_time))
    with open(target_file, 'a') as file:
        file.write(f'{index},{real_time}\n')

# time storage
times = []

# 100 tests performed
threads = []
for i in range(100):
    publisher_thread = threading.Thread(target=run_program, args=(publisher_program, times, i))
    consumer_thread = threading.Thread(target=run_program, args=(consumer_program, times, i))
    publisher_thread.start()
    consumer_thread.start()
    threads.append(publisher_thread)
    threads.append(consumer_thread)

# Wait for the threads
for thread in threads:
    thread.join()

# Calculate and print the mean and standard deviation
mean_time = statistics.mean(times)
standard_deviation_time = statistics.stdev(times)

print(f"Mean time: {mean_time:.4f} seconds")
print(f"Standard deviation: {standard_deviation_time:.4f} seconds")