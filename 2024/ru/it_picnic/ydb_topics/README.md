# Гарантии доставки сообщений в YDB Topics

**Speaker:** [Alexander Zevaykin](https://www.linkedin.com/in/alexander-zevaykin-6bb8162bb)\
**Slides:** [presentation.pdf](presentation.pdf)\
**Video:** [YouTube](https://www.youtube.com/watch?v=bdj_JrRPju0&list=PLLrf_044z4JoGkcJMLFrdA6isWSn8MZEq&index=34)\
**Event:** [ИТ-пикник 2024](https://it-picnic.ru/lectorium)

Рассмотрим базовые проблемы ненадежной передачи данных и способы борьбы с ними: повторы и дедупликацию. 

На примере паттернов микропроцессорной архитектуры проиллюстрируем гарантии доставки: at-most-once, at-least-once, exactly-once. 

В завершение покажем детали реализации гарантий доставки на примере двух брокеров очередей сообщений: Kafka и YDB Topics.
