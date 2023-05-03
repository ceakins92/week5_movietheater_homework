CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	last_name VARCHAR(100) NOT null,
	first_name VARCHAR(100) NOT null,
	premium_id INTEGER,
	fast_pass_id INTEGER,
	address VARCHAR(200),
	payment_info VARCHAR(200),
	email VARCHAR(200) NOT null,
	last_purchase DATE,
	first_purchase DATE
);

CREATE TABLE premium_membership(
	premium_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	member_since DATE,
	member_level VARCHAR(100),
	ticket_history VARCHAR(255),
	FOREIGN key(customer_id) REFERENCES customer(customer_id)
)

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	ticket_rate VARCHAR(50),
	ticket_price DECIMAL(8,2),
	date_purch DATE,
	time_purch TIME,
	movie_id INTEGER,
	customer_id INTEGER,
	ticket_quantity INTEGER
)

CREATE TABLE transfer_data(
	id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	premium_id INTEGER,
	fast_pass_id INTEGER,
	ticket_id INTEGER,
	movie_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(premium_id) REFERENCES premium_membership(premium_id),
	FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id),
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
	--FOREIGN KEY(fast_pass_id) REFERENCES concessions(fast_pass_id)
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100),
	release_date DATE,
	screens_avail INTEGER,
	showtime1 time,
	showtime2 time,
	showtime3 time,
	showtime4 time,
	closing_date DATE
)

CREATE TABLE concessions(
	concession_id SERIAL PRIMARY KEY,
	candy_product VARCHAR(100),
	popcorn_product VARCHAR(100),
	drink_product VARCHAR(100),
	snack_product VARCHAR(100),
	promotion_merch VARCHAR(100),
	premium_id INTEGER,
	fast_pass_id INTEGER,
	game_tokens DECIMAL(8,2)
	
)