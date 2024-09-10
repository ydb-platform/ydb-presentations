# An approach to unite tables and persistent queues in one system

**Speaker:** [Elena Kalinina](https://www.linkedin.com/in/elena-kalinina-2907b398/)
**Slides:** [presentation.pdf](presentation.pdf)
**Event:** [Stackconf 2024](https://stackconf.eu)

People need databases to store their data and persistent queues to transfer their data from one system to another. We’ve united tables and persisted queues within one data platform. Now you have a possibility to take your data from a queue, then process it and keep the result in a database within a single transaction. So your application developers don’t need to think about data inconsistency in cases of connection failures or other errors. 

Elena tell you about an open-source platform called YDB which allows you to work with tables and queues within a single transaction. Elena walk you through architecture decisions, possible scenarios, and performance aspects of this approach.