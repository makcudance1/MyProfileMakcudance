CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    product_name VARCHAR(200) NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    order_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(50) NOT NULL CHECK (payment_method IN ('credit', 'cash', 'card')),
    status VARCHAR(20) NOT NULL DEFAULT 'new' CHECK (status IN ('new', 'paid', 'shipped', 'delivered')),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE RESTRICT
);

/*
INSERT INTO orders (user_id, product_name, price, order_time, payment_method, status) VALUES
(1, 'Ноутбук', 89999.99, '2023-02-01 10:00:00', 'card', 'paid'),
(1, 'Мышь', 2499.99, '2023-02-02 11:00:00', 'card', 'shipped'),
(2, 'Телефон', 49999.99, '2023-02-03 12:00:00', 'credit', 'paid'),
(3, 'Наушники', 7999.99, '2023-02-04 13:00:00', 'cash', 'delivered'),
(4, 'Планшет', 32999.99, '2023-02-05 14:00:00', 'card', 'new'),
(5, 'Клавиатура', 5499.99, '2023-02-06 15:00:00', 'card', 'paid'),
(6, 'Монитор', 25999.99, '2023-02-07 16:00:00', 'credit', 'shipped'),
(7, 'Принтер', 18999.99, '2023-02-08 17:00:00', 'cash', 'delivered'),
(8, 'Сканер', 12999.99, '2023-02-09 18:00:00', 'card', 'new'),
(9, 'Колонки', 3999.99, '2023-02-10 19:00:00', 'card', 'paid'),
(10, 'Веб-камера', 2999.99, '2023-02-11 20:00:00', 'card', 'shipped'),
(1, 'Коврик для мыши', 999.99, '2023-02-12 21:00:00', 'cash', 'delivered');
*/ 
