# Postgres HA + Observability Lab

## Stack
- PostgreSQL primary + replica (streaming replication)
- WAL archiving
- Prometheus + Grafana monitoring

## Start
docker compose up -d

## Access
- Postgres Primary: localhost:5432
- Replica: localhost:5433
- Prometheus: http://localhost:9090
- Grafana: http://localhost:3000 (admin/admin)

## Test replication
Insert into primary:
INSERT INTO test_data (data) VALUES ('test');

Query replica:
SELECT * FROM test_data;

## Failover
./dba/failover.sh

## Notes
- This is a lab environment, not production HA