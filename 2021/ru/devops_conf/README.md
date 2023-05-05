# Распределенная трассировка с помощью Jaeger и YDB

**Докладчики:**

* [Александр Салтыков](https://www.linkedin.com/in/alex-salt/) (Auto.ru)
* [Алексей Щербаков](https://www.linkedin.com/in/alex-shcherbakov/) (Yandex.Cloud)

**Запись трансляции:** [YouTube](https://www.youtube.com/watch?v=J0OT8Qxbsvc)\
**Слайды:** [presentation.pdf](presentation.pdf)\
**Мероприятие:** [DevOpsConf 2021](https://devopsconf.io/moscow/2021/abstracts/7522)

Мы активно используем Jaeger как инструмент распределенной трассировки, и при росте нагрузки встал вопрос эффективности хранения и обработки данных. В докладе мы расскажем, как выбирали базу для хранения трейсов Jaeger и про дальнейший опыт эксплуатации Jaeger и YDB в Auto.ru и Yandex.Cloud. Решение стало популярным внутри Яндекса, и мы выпустили Jaeger-драйвер для Yandex Database в Open Source. Появление Yandex Database Serverless дало пользователям возможность сэкономить, и мы хотим поделиться результатами тестов Jaeger с Yandex Database Serverless.
