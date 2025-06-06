**Ransomware Detection Using Apache Kafka**

This project implements a real-time ransomware detection system using Apache Kafka on Kali Linux. It monitors a specified folder for file creation, modification, and deletion events. When suspicious activity is detected, such as rapid or unusual file behavior, it raises alerts to warn the user about a potential ransomware attack.


## Key Features

- Real-time file monitoring using a Kafka Producer
- Rule-based detection logic in Kafka Consumer
- Alert mechanisms via:
  - Desktop notifications
  - Log files
  - Optional alert sounds


## Tech Stack

- Python
- Apache Kafka
- Kali Linux
- Kafka Python Client
- File System Monitoring Libraries


## Project Structure

```

ransomware-detection-kafka/
├── kafka\_producer.py         # Sends file activity data to Kafka
├── kafka\_consumer.py         # Receives and analyzes data from Kafka
├── config/
│   └── kafka\_config.json     # Kafka topic and broker configuration
├── logs/
│   └── alert\_log.txt         # Alert log file
├── requirements.txt          # Python dependencies
├── README.md                 # Project documentation
└── LICENSE                   # MIT License

```


## How to Run

### 1. Start Kafka and Zookeeper

Ensure Apache Kafka and Zookeeper are installed and running:

```

# Start Zookeeper

bin/zookeeper-server-start.sh config/zookeeper.properties

# Start Kafka broker

bin/kafka-server-start.sh config/server.properties

```

### 2. Create Kafka Topic

```

bin/kafka-topics.sh --create --topic ransomware-alerts --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1

```

### 3. Run the Producer

```

python kafka\_producer.py

```

### 4. Run the Consumer

```

python kafka\_consumer.py

```

---

## Installation

1. Clone the repository:

```

git clone [https://github.com/Hamid-01/ransomware-detection-kafka.git](https://github.com/Hamid-01/ransomware-detection-kafka.git)
cd ransomware-detection-kafka

```

2. Install dependencies:

```

pip install -r requirements.txt

```


## Disclaimer

This is an academic project created for educational purposes and is not intended to be used as a production-level ransomware detection solution. It is recommended to use industry-grade security tools for real-world systems.


## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


## Contact

Created by Hamid as part of a semester project in Cybersecurity & Digital Forensics.

- GitHub: [github.com/Hamid-01](https://github.com/Hamid-01)
- LinkedIn: [linkedin.com/in/hamid-ch](https://linkedin.com/in/hamid-ch)
```
