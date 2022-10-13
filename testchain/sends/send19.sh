#!/bin/bash
for ((i=1;i<500;i++)); do  echo $i; 
time curl --data '{"method":"eth_sendTransaction","params":[{"from":"0x002db24c08ed9397bc77a554e55f80d56be7b15f","to":"0x00aa39d30f0d20ff03a22ccfc30b7efbfca597c2","gas":"0x21000","gasPrice":"0x20","value":"0x22"}],"id":1,"jsonrpc":"2.0"}' -H "Content-Type: application/json" -X POST localhost:8664; 
sleep 1;
done