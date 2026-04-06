CREATE ROLE replicator WITH REPLICATION LOGIN PASSWORD 'replica_pass';

CREATE TABLE test_data (
  id SERIAL PRIMARY KEY,
  data TEXT,
  created_at TIMESTAMP DEFAULT now()
);

INSERT INTO test_data (data) VALUES ('hello from primary');