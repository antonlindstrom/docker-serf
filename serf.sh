#!/bin/bash

set -e

export PATH=$PATH:/usr/local/bin

# Check if serf-port is set, else just start the node
if [ -n "$SERF_PORT_7946_TCP_ADDR" ]; then
  echo "Found: $SERF_PORT_7946_TCP_ADDR"
  serf agent -join $SERF_PORT_7946_TCP_ADDR
else
  echo "No links, running agent."
  serf agent
fi
