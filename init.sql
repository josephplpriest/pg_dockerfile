-- Create the database (optional, if not already created)
CREATE DATABASE docker_db;

\ docker_db;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,          -- Auto-incrementing ID
    username VARCHAR(50) NOT NULL,  -- Username (required)
    email VARCHAR(100) UNIQUE NOT NULL, -- Email address (unique and required)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Record creation timestamp
);

INSERT INTO users (username, email)
VALUES
    ('johndoe', 'johndoe@example.com'),
    ('janedoe', 'janedoe@example.com'),
    ('alexsmith', 'alexsmith@example.com');


