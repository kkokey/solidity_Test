#!/bin/bash

geth --datadir ./blockchinNet init ./src/genesis.json
geth --datadir ./blockchinNet --networkid 10 --rpc --rpccorsdomain "*" console
