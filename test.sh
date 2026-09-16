#!/bin/bash

echo "Запуск проверки web-проекта..."

if [ ! -f "index.html" ]; then
  echo "Ошибка: файл index.html не найден"
  exit 1
fi

if ! grep -q "Мое web-решение" index.html; then
  echo "Ошибка: в index.html отсутствует обязательный заголовок"
  exit 1
fi

if ! grep -q "GitHub Actions" index.html; then
  echo "Ошибка: в index.html отсутствует описание GitHub Actions"
  exit 1
fi

echo "Все проверки успешно пройдены"
exit 0
