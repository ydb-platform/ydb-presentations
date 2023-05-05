# Scalability and fault tolerance in YDB

**Speaker:** [Andrey Fomichev](https://www.linkedin.com/in/andrey-fomichev)
**Live stream recording:** [YouTube](https://www.youtube.com/watch?v=eYpyKXihGaY)
**Event:** [webinar](http://charap.co/reading-group-special-session-scalability-and-fault-tolerance-in-ydb/)
 
In this talk, we will cover two layers of YDB – Tablet and BlobStorage layers that together provide fault tolerance, scalability, and user isolation.

Tablet is a very lightweight component that implements distributed consensus. It is a building block for user data storage, schema manager, tablet manager, system views, and many other components. A single YDB cluster is known to have more than a million tablets, a single YDB node can serve up to 10K tablets. Tablet implements distributed consensus protocol over a shared log provided by the BlobStorage layer.

The BlobStorage layer is a fault-tolerant key-value append-only database. It implements a specific API for logging, blobs reading and writing, garbage collection, and quorum management. We believe that the protocol between Tablet and BlobStorage is quite simple and understandable by listeners compared to Paxos or Raft. We also illustrate the flexibility of YDB in real-life use cases like migrating some parts of the cluster from one availability zone to another without a maintenance window or storing some data blobs on fast media like SSD and another blob on HDD.