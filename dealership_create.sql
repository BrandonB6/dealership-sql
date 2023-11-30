CREATE TABLE Car (
  car_id Serial,
  make VARCHAR(50),
  model VARCHAR(50),
  color VARCHAR(50)
);

CREATE TABLE Customer (
  customer_id SERIAL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  address VARCHAR(100)
);

CREATE TABLE "Invoice" (
  "invoice_id" SERIAL,
  "date_id" DATE default Current_Date,
  "car_id" Integer,
  "customer_id" Integer,
  "salesperson_id" Integer
);

CREATE TABLE "Salesperson" (
  "salesperson_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50)
);

CREATE TABLE "Service_ticket" (
  "ticket_id" SERIAL,
  "ticket_date" DATE default Current_Date,
  "customer_id" Integer,
  "car_id" Integer
);

CREATE TABLE "Service" (
  "service_id" SERIAL,
  "hours" Integer,
  "rate" Integer,
  "bill_total" Integer,
  "comment" VARCHAR(300),
  "ticket_id" Integer,
  "mechanic_id" Integer,
  "car_id" Integer,
  PRIMARY KEY ("service_id")
);

CREATE TABLE "Parts_used" (
  "part_used" SERIAL,
  "quantity" Integer,
  "price" Integer,
  "ticket_id" Integer,
  "part_id" Integer,
  PRIMARY KEY ("part_used")
);

CREATE TABLE "Part" (
  "part_id" SERIAL,
  "upc" VARCHAR(20),
  "desc" VARCHAR(50),
  "cost" Integer,
  PRIMARY KEY ("part_id")
);

CREATE TABLE "Mechanic" (
  "mechanic_id" SERIAL,
  "first_name" VARCHAR(25),
  "last_name" VARCHAR(25),
  PRIMARY KEY ("mechanic_id")
);


