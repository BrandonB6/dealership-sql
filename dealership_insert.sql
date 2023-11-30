--function for inserting mechanic

create or replace function add_mechanic(_mechanic_id INTEGER,_first_name VARCHAR, _last_name VARCHAR)
returns void
as $main$
begin
	insert into "Mechanic"(mechanic_id,first_name,last_name)
	values (_mechanic_id,_first_name,_last_name);
end;
$main$
language plpgsql;


select add_mechanic(1,'James', 'Bond');
select add_mechanic(2,'Steve', 'Nash');

select * from "Mechanic" m ;


-- function for inserting car 

create or replace function add_car(_car_id Integer,_make VARCHAR,_model VARCHAR,_color VARCHAR)
returns void
as $main$
begin
	insert into Car(car_id,make,model,color)
	values (_car_id,_make,_model,_color);
end;
$main$
language plpgsql;

select add_car(1,'Chevy', 'Tahoe', 'Black');
select add_car(2,'Ford', 'Bronco', 'Teal');

select * from car c;

--inserting customer

create or replace function add_cust(_customer_id Integer,_first_name VARCHAR,_last_name VARCHAR,_address VARCHAR)
returns void
as $main$
begin
	insert into Customer(customer_id,first_name,last_name,address)
	values (_customer_id,_first_name,_last_name,_address);
end;
$main$
language plpgsql;

select add_cust(1,'Jamal', 'Charles', '123 Cheifs Way');
select add_cust(2,'Cam', 'Newton', '100 Panthers Drive');


select * from customer c ;

--inserting invoice

insert into "Invoice"(
	invoice_id,
	 date_id,
	 car_id,
	 customer_id,
	 salesperson_id
)	values (
		1,
		'2020-09-15',
		1,
		1,
		1
);

insert into "Invoice"(
	invoice_id,
	 date_id,
	 car_id,
	 customer_id,
	 salesperson_id
)	values (
		2,
		'2022-02-17',
		2,
		2,
		2
);

select * from "Invoice" i ;

--inserting salesperson

create or replace function add_salesperson(_salesperson_id INTEGER,_first_name VARCHAR, _last_name VARCHAR)
returns void
as $main$
begin
	insert into "Salesperson"(salesperson_id,first_name,last_name)
	values (_salesperson_id,_first_name,_last_name);
end;
$main$
language plpgsql;

select add_salesperson(1,'Jordan', 'Belfort');
select add_salesperson(2,'Jeff', 'Cook');

select * from "Salesperson" s ;

-- inserting service_ticket

insert into "Service_ticket" (
  ticket_id,
  ticket_date,
  customer_id,
  car_id
)	values (
	1,
	'2022-11-30',
	1,
	1
)

insert into "Service_ticket" (
  ticket_id,
  ticket_date,
  customer_id,
  car_id
)	values (
	2,
	'2023-12-01',
	2,
	2
)

select * from "Service_ticket" st ;

-- inserting service

insert into "Service" (
  service_id,
  hours,
  rate,
  bill_total,
  "comment",
  ticket_id,
  mechanic_id,
  car_id
)	values (
	1,
	4,
	50,
	200,
	'Needs alignment',
	1,
	1,
	1
);

insert into "Service" (
  service_id,
  hours,
  rate,
  bill_total,
  "comment",
  ticket_id,
  mechanic_id,
  car_id
)	values (
	2,
	2,
	75,
	150,
	'Shocks are worn',
	2,
	2,
	2
);

select * from "Service" s ;

-- inserting parts used

insert into "Parts_used" (
  part_used,
  quantity,
  price,
  ticket_id,
  part_id
)	values (
	1,
	1,
	20,
	1,
	1
)

insert into "Parts_used" (
  part_used,
  quantity,
  price,
  ticket_id,
  part_id
)	values (
	2,
	1,
	100,
	2,
	2
)

select * from "Parts_used" pu ;

--inserting part

insert into "Part" (
  part_id,
  upc,
  "desc",
  "cost"
) values (
	1,
	123,
	'Oil filter',
	20
)

insert into "Part" (
  part_id,
  upc,
  "desc",
  "cost"
) values (
	2,
	777,
	'Radiator',
	350
)

select * from "Part" p ;

