Создайте каталог task-10, содержащий две конфигурации:
+ Deployment
  - Каждый pod содержит в себе единственный образ,
отображающий статический сайт, использованный в
прошлых заданиях (образ залит на
Docker Hub)
  - Количество pod-ов реплицируется и держится не меньше 3
  - Проверки готовности и работоспособности контейнеров
выполняются с помощью HTTP-запроса
+ LoadBalancer, распределяющий нагрузку между pod-ами
деплоймента