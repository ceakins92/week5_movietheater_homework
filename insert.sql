INSERT INTO customer(
last_name,
first_name,
premium_id,
fast_pass_id,
address,
payment_info,
email,
last_purchase,
first_purchase
)VALUES(
	'eakins',
	'chris',
	1,
	1,
	'123 coolest breeze lane',
	'4242 6998 8576',
	'ceakins@emailplace.com',
	'2023-04-27',
	'2022-12-03'
),(
	'hartley',
	'richard',
	2,
	2,
	'675 Python Way',
	'847928374928374',
	'hearts@hartley.net',
	'2023-01-23',
	'2023-01-23'
	),(
	'wheatly',
	'carrie',
	3,
	3,
	'9873 Sequal AVE',
	'847928375872342',
	'cwheatly@gmail.com',
	'2023-03-23',
	'2023-01-14'
	)

INSERT INTO premium_membership(
premium_id,
customer_id,
member_since,
member_level
)VALUES(
	1,
	1,
	'2022-12-30',
	'Platinum'
),(
	2,
	2,
	'2023-05-01',
	'Silver'
),(
	3,
	3,
	'2023-02-14',
	'Platinum'
)

INSERT INTO movies(
	movie_name,
	release_date,
	screens_avail,
	closing_date
)values(
	'Mind Bender',
	'2023-05-01',
	5,
	'2023-09-09'
	),(
	'Face Melter',
	'2023-03-27',
	2,
	'2023-05-21'
	),(
	'Toe Smasher',
	'2023-06-01',
	3,
	'2023-08-23'
	)
	

INSERT INTO tickets(
	ticket_rate,
	ticket_price,
	date_purch,
	movie_id,
	customer_id,
	ticket_quantity
)VALUES(
	'Platinum',
	45.00,
	'2023-05-01',
	1,
	1,
	3
	),(
	'Silver',
	65.75,
	'2023-05-01',
	3,
	2,
	4
	),(
	'Platinum',
	55.00,
	'2023-05-01',
	1,
	3,
	4
	)
	
INSERT INTO concessions(
	candy_product,
	drink_product,
	promotion_merch,
	premium_id
)VALUES(
	'Reeses Cups',
	'Large Soda',
	'Deadpool Sticker',
	1
	),(
	'Nerds',
	'Small Soda',
	'',
	3
	)