CREATE DATABASE IF NOT EXISTS reparaturcafe;
CREATE DATABASE IF NOT EXISTS sqitch;

CREATE USER 'oskar'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON reparaturcafe.* TO 'oskar'@'%';
GRANT ALL PRIVILEGES ON sqitch.* TO 'oskar'@'%';
FLUSH PRIVILEGES;