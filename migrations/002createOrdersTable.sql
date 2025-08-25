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