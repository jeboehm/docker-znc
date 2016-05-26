#!/bin/sh

DATADIR="/znc-data"

if [ ! -f "${DATADIR}/configs/znc.conf" ]; then
  echo "Creating a default configuration..."
  mkdir -p "${DATADIR}/configs"
  cp /znc.conf.default "${DATADIR}/configs/znc.conf"
fi

chown -R zncrun:zncrun ${DATADIR}

# Start ZNC.
echo "Starting ZNC..."
su -c "znc --foreground --datadir=${DATADIR} $@" -s /bin/sh zncrun
