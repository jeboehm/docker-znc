#!/bin/sh

DATADIR="/znc-data"

# Create default config if it doesn't exist
if [ ! -f "${DATADIR}/configs/znc.conf" ]; then
  echo "Creating a default configuration..."
  mkdir -p "${DATADIR}/configs"
  cp /znc.conf.default "${DATADIR}/configs/znc.conf"
fi

# Start ZNC.
echo "Starting ZNC..."
znc --foreground --datadir="$DATADIR" $@
