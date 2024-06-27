#!/bin/sh

exec op-node \
    --l1=http://trace.eth.blockchain \
    --l1.beacon=http://archive-beacon.eth.blockchain \
    --l2=http://op-geth:8551 \
    --l2.jwt-secret=/op-geth/jwt.txt \
    --rollup.config=/config/rollup.json \
    --rpc.addr=0.0.0.0 \
    --rpc.port=8547 \
    --rpc.enable-admin \
    --metrics.enabled \
    --p2p.listen.tcp=9222 --p2p.listen.udp=9222 \
    --p2p.sync.req-resp \
    --p2p.priv.path=/op-node/opnode_p2p_priv.txt \
    --p2p.peerstore.path=/op-node/opnode_peerstore_db \
    --log.level=info
