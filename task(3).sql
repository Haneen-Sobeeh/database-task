CREATE table Users (
    user_id int   PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
);



CREATE TABLE Messages (
    message_id int  PRIMARY KEY,
    sender_id int,
    receiver_id int,
    content int,
    FOREIGN KEY (sender_id) REFERENCES Users(user_id),
    FOREIGN KEY (receiver_id) REFERENCES Users(user_id)
);

CREATE TABLE Services (
    service_id int  PRIMARY KEY,
    service_name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
  
);

CREATE TABLE User_Services (
    user_service_id int PRIMARY KEY,
    user_id int,
    service_id int,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id)
);

CREATE TABLE Payments (
    payment_id int  PRIMARY KEY,
    user_service_id int,
    amount DECIMAL(10, 2),
  
    FOREIGN KEY (user_service_id) REFERENCES User_Services(user_service_id)
);




-- Users
INSERT INTO Users (username, email) VALUES 
('haneen', 'haneen@example.com'),
('haneen', 'haneen@example.com'),
('haneen', 'haneen@example.com'),
('haneen', 'haneen@example.com'),
('haneen', 'haneen@example.com'),
('haneen', 'haneen@example.com');

-- Messages
INSERT INTO Messages (sender_id, receiver_id, content) VALUES 
(1, 2, 'Hi Haneen!'),
(2, 1, 'Hi Haneen!'),
(1, 3, 'Hi Haneen!'),
(3, 1, 'Hi Haneen!'),
(2, 3, 'Hi Haneen!'),
(3, 2, 'Hi Haneen!');

-- Services
INSERT INTO Services (service_name, description, price) VALUES 
('Chat Support', '24/7 chat support service', 29.99),
('Video Call', 'One-on-one video call service', 49.99),
('Group Chat', 'Chat service for groups', 19.99),
('File Sharing', 'Share files with users', 9.99),
('Voice Messages', 'Send voice messages to users', 14.99),
('Custom Emojis', 'Use custom emojis in chats', 5.99);

-- User_Services
INSERT INTO User_Services (user_id, service_id) VALUES 
(1, 1),
(1, 2),
(2, 3),
(3, 1),
(4, 4),
(5, 5);

-- Payments
INSERT INTO Payments (user_service_id, amount) VALUES 
(1, 29.99 ),
(2, 49.99 ),
(3, 19.99),
(4, 9.99),
(5, 14.99),
(6, 5.99);







-- Users
UPDATE Users SET email = 'ola@example.com' WHERE user_id = 1;
UPDATE Users SET username = 'ola' WHERE user_id = 2;

-- Messages
UPDATE Messages SET content = 'Hello haneen! How have you been?' WHERE message_id = 1;
UPDATE Messages SET content = 'I am doing well, thanks!' WHERE message_id = 2;

-- Services
UPDATE Services SET price = 39.99 WHERE service_id = 1;
UPDATE Services SET description = 'High-quality one-on-one video call service' WHERE service_id = 2;

-- User_Services
UPDATE User_Services SET user_id = 2 WHERE user_service_id = 1;
UPDATE User_Services SET user_id = 3 WHERE user_service_id = 2;

-- Payments
UPDATE Payments SET amount = 25.99 WHERE payment_id = 1;
UPDATE Payments SET amount = 100.6 WHERE payment_id = 3;





-- Users
DELETE FROM Users WHERE user_id = 4;
DELETE FROM Users WHERE user_id = 5;

-- Messages
DELETE FROM Messages WHERE message_id = 4;
DELETE FROM Messages WHERE message_id = 5;

-- Services
DELETE FROM Services WHERE service_id = 6;
DELETE FROM Services WHERE service_id = 3;

-- User_Services
DELETE FROM User_Services WHERE user_service_id = 4;
DELETE FROM User_Services WHERE user_service_id = 5;

-- Payments
DELETE FROM Payments WHERE payment_id = 5;
DELETE FROM Payments WHERE payment_id = 6;





ALTER TABLE User_Services RENAME TO User_Orders;
ALTER TABLE Payments RENAME TO PY;



ALTER TABLE Users CHANGE email user_email VARCHAR(150);
ALTER TABLE Services CHANGE price service_price DECIMAL(12, 2);
