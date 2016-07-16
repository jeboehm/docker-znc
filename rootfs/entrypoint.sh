#!/bin/sh

if [ ! -f "${DATADIR}/configs/znc.conf" ]; then
  echo "Creating a default configuration..."
  echo "Login with admin/admin"
  mkdir -p "${DATADIR}/configs"
  cp /znc.conf.default "${DATADIR}/configs/znc.conf"
fi

# Start ZNC.
echo "Starting ZNC..."
znc --foreground --datadir=${DATADIR} $@
