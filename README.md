# Staircase-Mapping-S
A terrible Python implementation of [Staircase Mapping](https://dl.acm.org/doi/10.1145/3287624.3287672) (*A Staircase Structure for Scalable and Efficient Synthesis of Memristor-Aided Logic*)

## Usage
Run staircase_mapping_final.py
```
$ python2 staircase_mapping_final.py
```

## About the program
This program does the following things:
1. Read in a .v netlist file which contains only NOR2 and INV gates (the [IMPLYl logic](https://ieeexplore.ieee.org/document/6617731) )
2. Do the topological sort for the gates, and devide all the gates in to several stages. Gates in the same stage can be excuted in parallel.
3. Do the staircase mapping. The "coordinate" of each gate in the crossbar will be printed.

## Caution
The data structure of this program is terrible. Although I managed to make it work roughly functionally correct , its effeciency is poor. For large netlists (like c6288.c from ISCAS85 benchmark) it may takes more than 30 minutes to finish :( .
