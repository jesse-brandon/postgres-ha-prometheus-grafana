#!/bin/bash
docker exec -it pg-replica pg_ctl promote -D /var/lib/postgresql/data