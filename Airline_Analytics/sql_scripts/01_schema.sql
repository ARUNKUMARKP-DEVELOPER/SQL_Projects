
CREATE TABLE airports (
    airport_id INT PRIMARY KEY,
    airport_code VARCHAR(10),
    airport_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    loyalty_points INT
);

CREATE TABLE flights (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(10),
    origin_id INT,
    destination_id INT,
    departure_time DATETIME,
    arrival_time DATETIME,
    status VARCHAR(20),
    aircraft VARCHAR(50),
    FOREIGN KEY (origin_id) REFERENCES airports(airport_id),
    FOREIGN KEY (destination_id) REFERENCES airports(airport_id)
);

CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    seat VARCHAR(5),
    price DECIMAL(10,2),
    booking_date DATE,
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id)
);
