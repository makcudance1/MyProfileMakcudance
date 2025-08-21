FROM nginx:alpine

# Копируем конфигурацию nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Копируем статические файлы
COPY index.html /usr/share/nginx/html/index.html

# Открываем порт 80
EXPOSE 80

# Запускаем nginx
CMD ["nginx", "-g", "daemon off;"] 