#!/bin/sh

if [ ! -d "/op-geth/geth/" ]; then
    echo "Initiating op-geth genesis state"
    geth init --datadir=/op-geth /config/genesis.json
fi

exec geth \
    --datadir /op-geth \
    --http \
    --http.corsdomain="*" \
    --http.vhosts="*" \
    --http.addr=0.0.0.0 \
    --http.api=miner,web3,debug,eth,txpool,net,engine,admin,trace \
    --syncmode=full \
    --gcmode=archive \
    --nodiscover \
    --maxpeers=0 \
    --metrics \
    --networkid=20240603 \
    --pprof --pprof.addr=0.0.0.0 --pprof.port 6060 \
    --authrpc.vhosts="*" \
    --authrpc.addr=0.0.0.0 \
    --authrpc.port=8551 \
    --authrpc.jwtsecret=/op-geth/jwt.txt \
    --rollup.disabletxpoolgossip=true \
    --rollup.sequencerhttp=$SEQUENCER_RPC
