CREATE TABLE users (
    id SERIAL PRIMARY KEY, -- Автоинкрементный первичный ключ (integer)
    name VARCHAR(50) NOT NULL, -- Имя
    second_name VARCHAR(50) NOT NULL, -- Фамилия
    phone_number VARCHAR(20) NULL, -- Номер телефона (может быть не у всех)
    passport VARCHAR(100) NULL, -- Паспортные данные (NULLable, т.к. может быть добавлен позже)
    date_of_registration TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP -- Дата регистрации (проставляется автоматически)
    -- order_id здесь НЕ нужен
);