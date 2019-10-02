CREATE TABLE shirts(
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(255),
    color VARCHAR(255),
    shirt_size VARCHAR(3),
    last_worn INT,
    PRIMARY KEY (shirt_id)
);