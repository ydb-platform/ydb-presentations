# КоРутинная практика: пишем свой TPC-C на корутинах

**Докладчик:** [Евгений Иванов](https://www.linkedin.com/in/eivanov89/) \
**Эксперт:** [Александр Крюков](https://www.linkedin.com/in/kruall/) \
**Слайды:** [presentation.pdf](presentation.pdf) \
**Видеозапись:** [YouTube](https://youtu.be/_wan8HZn5d0?si=_tiEa19wmvkEOjlN) \
**Мероприятие:** [C++ Russia 2026](https://cppconf.ru/archive/2025/talks/83fad02df5774a449f534f82a05dd788/)

## Материалы

### Выступления и посты

* [Цикл](https://lewissbaker.github.io/) постов. Упор делается на то, какой код генерирует компилятор и как туда подставляется то, что пишет разработчик. ИМХО, это глубокая, но очень понятная подача;
* [Павел Новиков — Учимся готовить C++ корутины на практике](https://www.youtube.com/watch?v=OE45F3iKtv4);
* [Deciphering C++ Coroutines - A Diagrammatic Coroutine Cheat Sheet - Andreas Weis](https://www.youtube.com/watch?v=J7fYddslH0Q). Ещё одно выступление, подача по-другому.
* [Dmitry Vyukov — Go scheduler: Implementing language with lightweight concurrency](https://www.youtube.com/watch?v=-K11rY57K7k&t=2s). Отличный системный доклад. Он о реализации, а не о Go. Позволяет понять различные тонкости и trade-offs.
* [Как мы начали использовать виртуальные потоки Java 21 и на раз-два получили дедлок в TPC-C для PostgreSQL](https://habr.com/ru/companies/ydb/articles/786550/);
* [The Surprising gRPC Client Bottleneck in Low-Latency Networks — and How to Get Around It](https://medium.com/ydbtech/the-surprising-grpc-client-bottleneck-in-low-latency-networks-and-how-to-get-around-it-69d6977a1d02).

### Код

Доклад основан на реализации TPC-C для [YDB](https://ydb.tech/): [документация](https://ydb.tech/docs/en/reference/ydb-cli/workload-tpcc?version=v25.3), [код](https://github.com/ydb-platform/ydb/tree/stable-26-1/ydb/library/workload/tpcc).

Используя Opus 4.6, мы сделали [порт](https://github.com/ydb-platform/tpcc-postgres-new) нашего TPC-C для PostgreSQL. Он доступен как отдельное приложение, не зависящее от библиотек YDB. Данная версия менее протестирована, работает не так эффективно, как TPC-C для YDB, но мы стараемся по возможности её улучшать. Можно запускать не только с PostgreSQL, но и в YDB в режиме PostgreSQL-совместимости.

Микробенчмарк coroutines vs. threads: [код](https://github.com/ydb-platform/tpcc-postgres-new/tree/main/src/coroutines_vs_threads). Запускать следует, не забывая о NUMA.

[Демо](https://github.com/eivanov89/toys/tree/master/cpp/hello_coroutines) работы корутин, где есть FIFO scheduler, timer thread. С этого началась наша реализация TPC-C. Можно поиграть, поразбираться и поискать возможные баги. Версия далека от оптимальной.
