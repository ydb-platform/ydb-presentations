# Initialize workload. Force every table to have 1 partition.
# Disable automatical partitioning by load
ydb --user ydbworkload -v -e \
grpc://ydb-node-zone-a.ydb.internal:2136 -d /Root/ydb-workload workload stock \
init -o 10000 -p 10000 --min-partitions 1 --auto-partition 0

# Following commands run three workloads in parallel

# In order to overload a partition let's run 64 threas of workload
# in mode that adds random orders.
# duration: 72 000 seconds (~20 hours)
ydb --user ydbworkload -v -e grpc://ydb-node-zone-a.ydb.internal:2136 \
-d /Root/ydb-workload workload stock run add-rand-order -s 72000 -t 64

# Additionaly let's run workload that puts orders to processing. Processing
# requires a distributed transaction. In 32 threads for 20 hours.

ydb --user ydbworkload -v -e grpc://ydb-node-zone-a.ydb.internal:2136 \
-d /Root/ydb-workload workload stock run put-rand-order -s 72000 -t 32

# Read-only workload that select last orders created by a random users.
# Let's run this workload for 20 hours in 32 threads.

ydb --user ydbworkload -v -e grpc://ydb-node-zone-a.ydb.internal:2136 \
-d /Root/ydb-workload workload stock run rand-user-hist -s 72000 -t 32

# Command launches a dynamic node for /Root/ydb-workload database
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/ydb/lib /opt/ydb/bin/ydbd server \
--grpc-port 2136 --ic-port 19002 --mon-port 8765 --yaml-config /opt/ydb/cfg/config.yaml \
--tenant /Root/ydb-workload --node-broker ydb-node-zone-a.ydb.internal:2135 \
--node-broker ydb-node-zone-b.ydb.internal:2135 \
--node-broker ydb-node-zone-c.ydb.internal:2135 >> /opt/ydb/log/dynamic-node.out 2>> /opt/ydb/log/dynamic-node.err &
