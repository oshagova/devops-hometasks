+ В репозитории создайте директорию task-07
+ В директории task-07 создайте Jenkinsfile, который содержит Pipeline из 5 этапов:
  * Скачивание исходных кодов из репозитория
https://github.com/L-Eugene/word-cloud-generator
  * Проверка исходных кодов и тесты (make lint и make test)
  * Сборка и загрузка артефактов в репозиторий Nexus (192.168.33.11,
Credentials-ID: nexus-creds)
  * Установка приложения на staging сервер, запуск integration-тестов (два
параллельных потока с одинаковыми integration-тестами) (Staging: 192.168.33.30)
  * Установка приложения на production сервер (Production: 192.168.33.40)
