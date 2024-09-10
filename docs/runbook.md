# Metopia Runbook

This page contains a guide on how to run a Metopia node and join the network. As a pre-requisite, you will need [Docker](<https://docs.docker.com/engine/install/>) installed on your local machine. To use this guide, clone this repo locally. **This guide is written assuming your local workspace is in the root directory of this repo.**

## Step 1: Install the Metopia Node Binary

Install the latest release of the Metopia node binary from the [Metopian/metopia-kwil Github repo](<https://github.com/Metopian/metopia-kwil/releases>).

## Step 2: Run the  setup command

Use the newly installed `` binary to run the setup command. This will create a new root directory to store node files, generate a new node private key, and copy the genesis file:

```shell
 admin setup init --genesis ./genesis.json
```

## Step 3: Run Postgres and ``

Run Postgres locally using Docker. We use a special Postgres image that comes pre-configured with [Kwil's required parameters](<https://docs.kwil.com/docs/daemon/running-postgres>):

```shell
docker run -d -p 5433:5432 --name kwil-postgres -e "POSTGRES_HOST_AUTH_METHOD=trust" \
    kwildb/postgres:latest
```

Run the Metopia node:
**NOTE:** Since the Metopia network has not been launched at the time of writing, we cannot complete this step. Once the network has launched, we will use the genesis nodes as the persistent peers.

```shell
 --chain.p2p.persistent-peers <genesis_nodes>
```
