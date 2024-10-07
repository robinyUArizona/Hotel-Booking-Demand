-- Data Cleaning

select *
from hotel_bookings;

-- 1. Remove Duplicates
-- 2. Standardize the Data
-- 3. Null values or blank values
-- 4. Remove Any columns


CREATE TABLE hotel_bookings_staging
LIKE hotel_bookings;


select *
from hotel_bookings_staging;

-- insert hotel_bookings_staging
-- select *
-- from hotel_bookings;


-- 1. Remove Duplicates
select count(*)
from hotel_bookings_staging;

-- find duplicates
with duplicate_cte as 
(
select *,
	row_number() over(partition by hotel, is_canceled, lead_time, arrival_date_year, arrival_date_month, arrival_date_week_number,
arrival_date_month, stays_in_weekend_nights, stays_in_week_nights, adults, children, babies, meal,
country, market_segment, distribution_channel, is_repeated_guest, previous_cancellations, 
previous_bookings_not_canceled, reserved_room_type, assigned_room_type, booking_changes,
deposit_type, agent, company, days_in_waiting_list, customer_type, adr, required_car_parking_spaces,
total_of_special_requests, reservation_status,  reservation_status_date) as row_num
from hotel_bookings_staging
)
select count(*)
from duplicate_cte
where row_num > 1;

-- delete duplicates
CREATE TABLE `hotel_bookings_staging_2` (
  `hotel` text,
  `is_canceled` int DEFAULT NULL,
  `lead_time` int DEFAULT NULL,
  `arrival_date_year` int DEFAULT NULL,
  `arrival_date_month` text,
  `arrival_date_week_number` int DEFAULT NULL,
  `arrival_date_day_of_month` int DEFAULT NULL,
  `stays_in_weekend_nights` int DEFAULT NULL,
  `stays_in_week_nights` int DEFAULT NULL,
  `adults` int DEFAULT NULL,
  `children` float DEFAULT NULL,
  `babies` int DEFAULT NULL,
  `meal` text,
  `country` text,
  `market_segment` text,
  `distribution_channel` text,
  `is_repeated_guest` int DEFAULT NULL,
  `previous_cancellations` int DEFAULT NULL,
  `previous_bookings_not_canceled` int DEFAULT NULL,
  `reserved_room_type` text,
  `assigned_room_type` text,
  `booking_changes` int DEFAULT NULL,
  `deposit_type` text,
  `agent` float DEFAULT NULL,
  `company` float DEFAULT NULL,
  `days_in_waiting_list` int DEFAULT NULL,
  `customer_type` text,
  `adr` float DEFAULT NULL,
  `required_car_parking_spaces` int DEFAULT NULL,
  `total_of_special_requests` int DEFAULT NULL,
  `reservation_status` text,
  `reservation_status_date` text,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- check
select *
from hotel_bookings_staging_2;

insert into hotel_bookings_staging_2
select *,
	row_number() over(partition by hotel, is_canceled, lead_time, arrival_date_year, arrival_date_month, arrival_date_week_number,
arrival_date_month, stays_in_weekend_nights, stays_in_week_nights, adults, children, babies, meal,
country, market_segment, distribution_channel, is_repeated_guest, previous_cancellations, 
previous_bookings_not_canceled, reserved_room_type, assigned_room_type, booking_changes,
deposit_type, agent, company, days_in_waiting_list, customer_type, adr, required_car_parking_spaces,
total_of_special_requests, reservation_status,  reservation_status_date) as row_num
from hotel_bookings_staging;

select *
from hotel_bookings_staging_2
where row_num > 1;


-- Temporarily Disable Safe Update Mode
SET SQL_SAFE_UPDATES = 0;
-- delete
delete
from hotel_bookings_staging_2
where row_num > 1;

select count(*)
from hotel_bookings_staging_2;


-- 2. Standardize the Data
select hotel, trim(hotel)
from hotel_bookings_staging_2;

update hotel_bookings_staging_2
set hotel = trim(hotel);

select distinct market_segment
from hotel_bookings_staging_2
order by 1;

select *
from hotel_bookings_staging_2
where market_segment like 'Offline TA/TO';

update hotel_bookings_staging_2
set market_segment = 'Offline TA_TO'
where market_segment like 'Offline TA/TO';

select reservation_status_date
from hotel_bookings_staging_2;

update hotel_bookings_staging_2
set reservation_status_date = date_format(reservation_status_date, '%m/%d/%Y');

update hotel_bookings_staging_2
set reservation_status_date = str_to_date(reservation_status_date, '%m-%d-%Y');

-- change data type of 'reservation_status_date' to datetime type
alter table hotel_bookings_staging_2
modify column reservation_status_date date;


-- 3. Null values or blank values



-- 4. Remove Any columns
