# YDB vs. TPC-C: the Good, the Bad, and the Ugly behind High-Performance Benchmarking

**Speaker:** [Evgenii Ivanov](https://www.linkedin.com/in/eivanov89/)\
**Slides:** [presentation.pdf](presentation.pdf)\
**Video recording:** [YouTube](https://youtu.be/LlqfqzPtLD0?si=YYDcXkUZFsLJRJEY)\
**Event:** [Tech Internals Conf Cyprus 2024](https://internals.tech/2024/abstracts/9812)

Modern distributed databases scale horizontally with great efficiency, making them almost limitless in capacity. This implies that benchmarks should be able to run on multiple machines and be very efficient to minimize the number of machines required. This talk will focus on benchmarking high-performance databases, with a particular emphasis on YDB and our implementation of the TPC-C benchmark—the de-facto gold standard in the database field.

First, we will speak about benchmarking strategies from a user's perspective. We will dive into key details related to benchmark implementations, which could be useful when you create a custom benchmark to mirror your production scenarios. Throughout our performance journey, we have identified numerous anti-patterns: there are things you should unequivocally avoid in your benchmark implementations. We'll highlight these "bad" and "ugly" practices with illustrative examples.

Next, we’ll briefly discuss the popular key-value benchmark YCSB, which we believe is a prerequisite for robust performance in distributed transactions. Following this, we'll explore the TPC-C benchmark in greater detail, sharing valuable insights derived from our own implementation.

We'll conclude our talk by presenting performance results from TPC-C benchmark, comparing YDB and CockroachDB with PostgreSQL to illustrate situations where PostgreSQL might be not enough and when you might want to consider a distributed DBMS instead.