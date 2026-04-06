#!/bin/bash
set -e

echo "Waiting for primary..."
sleep 10

if [ ! -s "/var/lib/postgresql/data/PG_VERSION" ]; then
  echo "Cloning from primary..."
  pg_basebackup -h pg-primary -D /var/lib/postgresql/data -U replicator -Fp -Xs -P -R
fi

echo "Starting replica..."
exec postgres