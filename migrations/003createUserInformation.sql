CREATE TABLE user_information (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL UNIQUE, -- Внешний ключ с ограничением UNIQUE для связи 1:1
    login VARCHAR(50) NOT NULL UNIQUE, -- Уникальный логин
    password_hash VARCHAR(255) NOT NULL, -- Хэш пароля (никогда не храните пароль в открытом виде!)
    email VARCHAR(100) NULL UNIQUE, -- Email для входа/связи (уникальный)

    -- Связываем с таблицей users. При удалении пользователя удаляется и эта запись.
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);