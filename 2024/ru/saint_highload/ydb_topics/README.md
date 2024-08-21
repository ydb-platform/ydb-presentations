# Гарантии доставки сообщений в YDB Topics

**Speaker:** [Alexander Zevaykin](https://www.linkedin.com/in/alexander-zevaykin-6bb8162bb)\
**Slides:** [presentation.pdf](presentation.pdf)\
**Video:** [YouTube](https://www.youtube.com/watch?v=6l64n8t8Ivs)\
**Event:** [Saint HighLoad++ 2024](https://highload.ru/spb/2024/abstracts/11812)

Рассматриваются базовые проблемы ненадёжной передачи данных и способы борьбы с ними: повторы и дедупликация. 

Далее на примере паттернов микропроцессорной архитектуры иллюстрируются гарантии доставки: at-most-once, at-least-once, exactly-once.

В заключение на примере двух брокеров очередей сообщений — Kafka и YDB Topics — показываются детали реализации гарантий доставки.