#!/usr/bin/env bash
#MySQL SysBench parameters:https://www.percona.com/blog/2017/01/06/millions-queries-per-second-postgresql-and-mysql-peaceful-battle-at-modern-demanding-workloads/
LD_PRELOAD=/data/sveta/5.7.14/lib/mysql/libjemalloc.so
 /data/sveta/sbkk/bin/sysbench
 [ --test=/data/sveta/sysbench/sysbench/tests/db/oltp_prepared.lua | --test=/data/sveta/sysbench/sysbench/tests/db/oltp_simple_prepared.lua ]
 --db-driver=mysql --oltp-tables-count=8 --oltp-table-size=10000000
--mysql-table-engine=innodb --mysql-user=msandbox --mysql-password=msandbox
 --mysql-socket=/tmp/mysql_sandbox5715.sock
--num-threads=$i --max-requests=0 --max-time=300
--percentile=0 [--oltp-read-only=on --oltp-skip-trx=on]