# Timestamp-attack-of-Aura

This is a Rust-based experimental implementation of paper *Time-manipulation Attack: Breaking Fairness against Proof of Authority Aura*. 

## **Getting Started**

The codes are developed in Rust and Python (for data processing tools) using a server with Ubuntu 20.04.4 LTS (GNU/Linux 5.4.0-109-generic x86\_64) operating system.

### **Prerequisites**

* [Rust (version)](https://www.rust-lang.org/)
* Websocket 8650-8675 and 8750-8775 are avaliable (considering the scenarios of running 21 sealer nodes and 5 user nodes).

### **Build**


To build the project, enter each *openethereum* directory and run:

```
cargo build
```

## **Running the tests**
* To run the test, enter *./testchain* directory and run:

```
./nohuprun.sh
```
21 sealer nodes and 5 user nodes should start running on local machine, which is editable in file *./nohuprun.sh* along with attacking methods of malicious $node_0$.

* To enable the Python auxiliary tool for current blockchain state, run:
```
./start.sh
```
Follow the instruction and type in the span of blocks to be analyzed, and results will be outputted as

1. logs/.
2. qry_result.txt
3. result_readable.txt
4. results_indexes.txt

(**Python auxiliary tools for data processing** can be found in directory *./testchain/shellgen*)

* To stop the running, run:
```
./stop.sh
```

* After the stop, to clean up the current chain data and operation results, run:
```
./clean.sh
```

* To send transactions to the system, make sure usr1 to usr5 are running and run:
```
./send.sh
```


## **Historical data**

Historical data of our runs are in [*results*](https://github.com/auraAttack/Time-manipulation-Attack/tree/main/results) folder.

## Acknowledgments
Attacking source code is developed based on:
* [Openethereum 3.3.4](https://github.com/openethereum/openethereum/tree/v3.3.4)

