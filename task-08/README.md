+ В репозитории создайте директорию task-08
+ В созданной директории создайте Dockerfile, создающий docker-образ,
удовлетворяющий следующим требованиям:
  * Основан на debian:latest
  * При запуске выполняет Apache httpd, отображающий динамический сайт из
прошлых домашних заданий
+ В той же директории создайте скрипт dynamic.sh
  * запускающий докер-контейнер из вашего образа (имя образа - hometask-image)
  * пробрасывающий порт 80 контейнера на порт 8080 хост-системы
+ В той же директории создайте скрипт static.sh
  * запускающий докер-контейнер из вашего образа (имя образа - hometask-image)
  * пробрасывающий порт 80 контейнера на порт 8081 хост-системы
  * размещает файл index.html из вашей текущей директории в директории c кодом
сайта.

\*** 
+ Создайте в директории task-08 файл Dockerfile.multi
+ Созданный Dockerfile должен создавать один промежуточный образ
  * Образ основан на golang:1.13
  * Получает исходный код проекта word-cloud-generator из
https://github.com/L-Eugene/word-cloud-generator.git
  * Выполняет сборку приложения с помощью команды make
+ Созданный Dockerfile должен создавать итоговый образ
  * Основаный на alpine:latest
  * Получающий исполняемый файл проекта word-cloud-generator из промежуточного
образа
  * При запуске по умолчанию выполняюший приложение word-cloud-generator
