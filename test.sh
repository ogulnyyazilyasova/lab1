#!/bin/bash
echo "=== Запуск проверки opozdun.scr ==="

if [ ! -f "opozdun.scr" ]; then
  echo "Ошибка: файл opozdun.scr не найден"
  exit 1
fi

if grep -q "Я опоздал со сдачей лабораторных" opozdun.scr; then
  echo " Текст найден. Приложение будет развернуто на opozdal.ru"
  exit 0
else
  echo " Текст не найден. Приложение будет удалено с opozdal.ru"
  exit 1
fi