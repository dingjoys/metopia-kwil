# Metopia Network Setup Network Setup

This page documents the process for setting up the `genesis.json` for Metopia. It can be used to reset the network genesis configuration in case of a critical security breach, development changes, or otherwise.

## Step 1: Generate A New Config

To generate a new configuration for the network, we will use the ` admin setup init` command. Pass the `--help` flag for a full list of options on how the genesis file can be configured:

```shell
 admin setup init --root-dir ./setup
```

## Step 2: Copy The Genesis File

The genesis file should be included included in this repo so that it is easy for network operators to join the network. Copy the genesis file into this repo:

```shell
cp ./setup/genesis.json genesis.json
```

## Step 3: Keep The Private Key

The initial validator's private key can be found at `./setup/private_key`. This private key must be used by the first network validator.
