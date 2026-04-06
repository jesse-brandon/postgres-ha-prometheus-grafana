#!/bin/bash
pg_dump -h localhost -U admin appdb > backup.sql