<h1>Integrating Post-Quantum Cryptography in a Publisher-Consumer Communication over CycloneDDS</h1>
Author: Adrián Serrano Navarro (100429115)

Master's thesis, Universidad Carlos III of Madrid, 2024

### Description:
This repository implements a Key Encapsulation Mechanism (KEM) handshake using post-quantum cryptographic algorithms: Kyber768 for key agreement and Dilithium3 for signature. The publisher and consumer initiate communication over CycloneDDS and engage in a KEM handshake involving key generation, encapsulation, and decapsulation processes to authenticate each other and establish a shared secret.

### How it Works:
- Initiation of Communication: Publisher and consumer start a communication process using CycloneDDS.
- Key Exchange: Generation of cryptographic keys using Kyber768 algorithm.
- Encapsulation: The generated key is received by the other party, which encapsulates it using post-quantum cryptography. It sends back an associated ciphertext.
- Decapsulation: Upon receiving the encapsulated key or ciphertext, the other party decapsulates it to obtain the same shared secret.

### Implementation Details:
- This code is developed based on the built-in Authentication plugin of CycloneDDS, that uses Diffie-Hellman for the key exchange instead. The Authentication plugin source code is available at the [GitHub CycloneDDS repository](https://github.com/eclipse-cyclonedds/cyclonedds). 
- The KEM funcionalities have been developed using the C liboqs library.

### Usage:
- Clone this repository.
- Follow the setup instructions provided in the readme file of the main branch of the repository https://github.com/qursa-uc3m/pqsec-dds. (Take into account possible relative paths). 
- Execute the code to observe the integration of post-quantum cryptography in a publisher-consumer communication with the HelloworldSubscriber and HelloworldPublisher examples in CycloneDDS.

### References:
- CycloneDDS: Real-time data communication middleware that provides an infrastructure for secure and efficient communication. 
- liboqs: Open-source library that provides implementations of cryptographic algorithms resistant to quantum attacks. 
- Kyber: Post-Quantum Secure Key Exchange.
- Dilithium: Post-Quantum Secure Digital Signatures.
