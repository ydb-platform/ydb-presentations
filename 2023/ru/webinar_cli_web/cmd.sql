-- Enable partitioning by load for every table of workload stock involved in
-- this webinar
alter table orders set
(
    AUTO_PARTITIONING_BY_LOAD = ENABLED,
    AUTO_PARTITIONING_MIN_PARTITIONS_COUNT = 10,
    AUTO_PARTITIONING_MAX_PARTITIONS_COUNT = 20
);

alter table ordersLines set
(
    AUTO_PARTITIONING_BY_LOAD = ENABLED,
    AUTO_PARTITIONING_MIN_PARTITIONS_COUNT = 10,
    AUTO_PARTITIONING_MAX_PARTITIONS_COUNT = 20
);


alter table stock set
(
    AUTO_PARTITIONING_BY_LOAD = ENABLED,
    AUTO_PARTITIONING_MIN_PARTITIONS_COUNT = 10,
    AUTO_PARTITIONING_MAX_PARTITIONS_COUNT = 20
);

-- SQL query to demonstrate query plan example
-- WARNING: customer ids are generated randomly
select
    o.customer, ol.product, sum(ol.quantity) as orders_quantity
from
    orders view ix_cust as o inner join orderLines as ol on ol.id_order = o.id
where
    customer in ('Name1033', 'Name4313')
group by
    o.customer, ol.product
