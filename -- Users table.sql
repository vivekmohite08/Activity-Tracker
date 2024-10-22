-- Users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL
);

-- Activities table
CREATE TABLE activities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    activity_date DATETIME NOT NULL,
    points INT DEFAULT 20,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
