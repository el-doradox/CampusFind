CREATE DATABASE IF NOT EXISTS campusfind;
USE campusfind;

CREATE TABLE IF NOT EXISTS users (
    user_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(190) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('STUDENT', 'ADMIN') NOT NULL DEFAULT 'STUDENT',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS items (
    item_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    reporter_id BIGINT NOT NULL,
    report_type ENUM('LOST', 'FOUND') NOT NULL,
    title VARCHAR(150) NOT NULL,
    category VARCHAR(80) NOT NULL,
    description TEXT,
    location VARCHAR(180) NOT NULL,
    date_lost_found DATE NOT NULL,
    status ENUM('OPEN', 'MATCHED', 'RETURNED', 'CLOSED') NOT NULL DEFAULT 'OPEN',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_items_reporter FOREIGN KEY (reporter_id) REFERENCES users(user_id)
);

CREATE TABLE IF NOT EXISTS recovery_requests (
    request_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    item_id BIGINT NOT NULL,
    requester_id BIGINT NOT NULL,
    message VARCHAR(1000),
    request_status ENUM('PENDING', 'ACCEPTED', 'DECLINED', 'COMPLETED') NOT NULL DEFAULT 'PENDING',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_requests_item FOREIGN KEY (item_id) REFERENCES items(item_id),
    CONSTRAINT fk_requests_user FOREIGN KEY (requester_id) REFERENCES users(user_id)
);

CREATE INDEX idx_items_type_status ON items(report_type, status);
CREATE INDEX idx_items_category ON items(category);
CREATE INDEX idx_items_location ON items(location);
