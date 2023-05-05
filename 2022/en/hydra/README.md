# Parallel Asynchronous Replication between YDB Database Instances

**Speakers:**

* [Andrey Fomichev](https://www.linkedin.com/in/andrey-fomichev)
* [Ilnaz Nizametdinov](https://www.linkedin.com/in/nilnaz)

**Slides:** [presentation.pdf](presentaiton.pdf)
**Live stream recording:** [on conference website](https://hydraconf.com/talks/d63511d6011a4b458b9c16be675f6897/) (in Russian, login required)
**Event:** [Hydra 2022](https://hydraconf.com/talks/d63511d6011a4b458b9c16be675f6897/)
 
Asynchronous replication is a well-known technique to provide an independent replica of a database for different purposes including disaster recovery, geo-replication or scaling read workload. Traditionally, a log of changes from source replica is treated as an input for target replica database. If source and target replicas are distributed databases that handle high workload, putting all updates to a single log of changes could be nearly impossible. For instance, YDB is a Distributed SQL Database that is built out of reliable components called tablets, each tablet has its own recovery log, and user update may modify data in different tablets in one transaction. Multi tablet transactions provide ACID guarantees via an internal mechanism of distributed transaction execution. 

So, there is no single log of changes that could be transferred to the target database. In this talk we present an approach to asynchronous replication in YDB that provides the following characteristics:

Changefeed from source database is sharded among multiple persistent queues that allows us to scale the log of database changes;
Sharded changefeed is applied to the target database in a manner to guarantee target database consistency, i.e. every read from the target database returns some (consistent) state of source database in the past.
