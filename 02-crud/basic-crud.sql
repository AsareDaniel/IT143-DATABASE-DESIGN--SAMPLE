-- This sample SQL file is provided by Sample-Files.com
-- Visit https://Sample-Files.com for more sample files and resources.

-- Create a new table called 'users'
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert some sample data into the 'users' table
INSERT INTO users (username, email) VALUES ('john_doe', 'john@example.com');
INSERT INTO users (username, email) VALUES ('jane_smith', 'jane@example.com');

-- Read all data from the 'users' table
SELECT * FROM users;

-- Update an existing user's email
UPDATE users SET email = 'john.doe@example.com' WHERE username = 'john_doe';

-- Delete a user from the table
DELETE FROM users WHERE username = 'jane_smith';
