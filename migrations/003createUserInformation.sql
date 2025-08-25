CREATE TABLE user_information (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL UNIQUE,
    login VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

/*
 INSERT INTO user_information (user_id, login, password_hash, email) VALUES
(1, 'ivanov_i', '$2a$10$rOyV6oZbWzZR8ZbX8XcX8e', 'ivanov@mail.ru'),
(2, 'petrova_m', '$2a$10$rOyV6oZbWzZR8ZbX8XcX8e', 'petrova@mail.ru'),
(3, 'sidorov_a', '$2a$10$rOyV6oZbWzZR8ZbX8XcX8e', 'sidorov@mail.ru'),
(4, 'smirnova_e', '$2a$10$rOyV6oZbWzZR8ZbX8XcX8e', 'smirnova@mail.ru'),
(5, 'kuznetsov_d', '$2a$10$rOyV6oZbWzZR8ZbX8XcX8e', 'kuznetsov@mail.ru'),
(6, 'vasileva_o', '$2a$10$rOyV6oZbWzZR8ZbX8XcX8e', 'vasileva@mail.ru'),
(7, 'pavlov_s', '$2a$10$rOyV6oZbWzZR8ZbX8XcX8e', 'pavlov@mail.ru'),
(8, 'semenova_a', '$2a$10$rOyV6oZbWzZR8ZbX8XcX8e', 'semenova@mail.ru'),
(9, 'fedorov_a', '$2a$10$rOyV6oZbWzZR8ZbX8XcX8e', 'fedorov@mail.ru'),
(10, 'nikolaeva_n', '$2a$10$rOyV6oZbWzZR8ZbX8XcX8e', 'nikolaeva@mail.ru'); 
*/
