CREATE TABLE user_information (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL UNIQUE,
    login VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);