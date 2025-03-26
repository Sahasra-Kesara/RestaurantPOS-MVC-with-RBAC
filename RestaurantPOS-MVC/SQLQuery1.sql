CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(100) NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    Role VARCHAR(50) NOT NULL
);

-- Insert sample roles (you can add more roles if needed)
INSERT INTO Users (Username, PasswordHash, Role)
VALUES ('admin', 'admin_password_hash', 'Manager'),
       ('cashier1', 'cashier_password_hash', 'Cashier');
