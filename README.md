This repo helps spin up DBK Chain node.

## RPC Node

1. If you don't want to start synchronization from scratch, get a snapshot from the DeBank team.
2. Copy `.env.exmaple` to `.env` and modify the corresponding variables
    * `OP_GETH_DATADIR` - the path to the op-geth data directory
    * `OP_NODE_DATADIR` - the path to the op-node data directory
3. Run `docker-compose up -d` to start the RPC node