## Part 1. Готовый докер

1. Беру официальный докер-образ с nginx и качаю его при помощи ``docker pull```

![a](img/1.1.jpg)

2. Проверяю наличие докер-образа через ```docker images```

![a](img/1.2.jpg)

3. Запускаю докер-образ через ```docker run -d [image_id|repository]```

![a](img/1.3.jpg)

4. Проверяю, что образ запустился через ```docker ps```

![a](img/1.4.jpg)

5. Смотрю информацию о контейнере через ```docker inspect [container_id|container_name]```

![a](img/1.5.jpg)

![a](img/1.6.jpg)


   размер контейнера:
   
   ![a](img/1.7.jpg)
   
   список замапленных портов:
   
   ![a](img/1.8.jpg)
   
   ip контейнера:
   
   ![a](img/1.9.jpg)
   
 6. Останавливаю докер контейнер через ```docker stop [container_id|container_name]``` и проверяю через ```docker ps```


![a](img/1.10.jpg)

7. Запускаю докер с портами 80 и 443 командой ```docker run -p 80:80 -p 443:443 nginx```

![a](img/1.11.jpg)

8. В браузере ввожу ```localhost:80```. Появляется стартовая страница nginx

![a](img/1.12a.jpg)

![a](img/1.12.jpg)

9. Перезапускаю докер ```docker restart``` и проверяю его состояние

![a](img/1.13.jpg)

## Part 2. Операции с контейнером



1. Вывожу содержимое файла конфигурации в контейнере ```docker exec nostalgic_perlman cat /etc/nginx/nginx.conf```

![a](img/2.1.jpg)

2. Создаю на машине файл nginx.conf и добавляю туда по пути /status отдачу страницы статуса сервера nginx

![a](img/2.2.jpg)

3. Копирую файл в докер ```docker cp nginx.conf nostalgic_perlman:/etc/nginx/```

![a](img/2.3.jpg)

4. Перезапускаю nginx

![a](img/2.4.jpg)

5. Командой ```docker exec -it mystifying_kepler curl http://localhost/status``` проверяю статус nginx

![a](img/2.5.jpg)

6. Эскпортирую контейнер

![a](img/2.6.jpg)

7. Останавливаю его

![a](img/2.7.jpg)

8. Сначала удаляю образ 

![a](img/2.8.jpg)

9. Затем удаляю контейнер



![a](img/2.10.jpg)

10. Импортирую сохраненный контейнер


![a](img/2.11.jpg)

11. Проверяю контейнер через ```docker images```


![a](img/2.12.jpg)

12. Запускаю контейнер 

![a](img/2.13.jpg)

13. Проверяю статус nginx через curl

![a](img/2.14.jpg)

## Part 3. Мини веб-сервер

1. Создаю файл server.c, который будет выводить Hello, World!

![a](img/3.1.jpg)

2. Копирую на докер server.c и nginx.conf

![a](img/3.2.jpg)

3. Захожу в докер

![a](img/3.3.jpg)