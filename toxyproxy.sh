#!/usr/bin/env sh
set -eo #End the script immediately if any command or pipe exits with a non-zero status.

# toxiproxy-server

# create the proxy connection to the server
# default --host http://localhost:8474 
# toxiproxy-cli create --listen 127.0.0.1:53001 --upstream localhost:8080 localserv

# # The delay is equal to latency +/- jitter.
# toxiproxy-cli toxic add 
#   --toxicName latency1 \
#   --toxicity 0.75 \
#   --type latency -a latency=1000 -a jitter=500 \
#   --downstream \
#   localserv

# toxiproxy-cli toxic remove --toxicName latency1 localserv


# # add an abort failure
# toxiproxy-cli toxic add  \
#   --toxicName limitdata1 \
#   --type limit_data \
#   --toxicity 0.5 \
#   --attribute bytes=300 \
#   --downstream \
#   localserv

# toxiproxy-cli toxic remove --toxicName limitdata1 localserv


# # add a timeout failure (timeout is in milliseconds)
# toxiproxy-cli \
#   toxic add \
#   --toxicName bandwidth1 \
#   --type bandwidth \
#   --toxicity 0.5 \
#   --attribute rate=500 \ # KB/s
#   --downstream \
#   localserv

# toxiproxy-cli toxic remove --toxicName bandwidth1 localserv

# # list the setup
# toxiproxy-cli list

toxiproxy-cli inspect localserv





# # !!!connection is not killed on timeout if there is constant traffic on the connection 
# #(as was happening in my case with a WebSocket connection that is sending ping / pong every second).
# # add a timeout failure (timeout is in milliseconds)
# toxiproxy-cli \
#   toxic add \
#   --toxicName timeout1 \
#   --type timeout \
#   --toxicity 0.3 \
#   --attribute timeout=100 \
#   --downstream \
#   localserv

# # add a timeout failure (timeout is in milliseconds)
# toxiproxy-cli \
#   toxic add \
#   --toxicName timeout1 \
#   --type reset_peer \
#   --toxicity 0.5 \
#   --attribute timeout=500 \
#   --downstream \
#   localserv