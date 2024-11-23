create database Ola;
use Ola;


select * from bookings;

-- 1. Retrieve all successful bookings:

select * from bookings 
where booking_status= 'success';

-- 2. Find the average ride distance for each vehicle type:

SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM bookings GROUP BY
 Vehicle_Type;
 
 
 -- 3. Get the total number of cancelled rides by customers:
 
 select 
count(*)
 from bookings
 where Booking_status = 'Canceled by Customers';


-- 4. List the top 5 customers who booked the highest number of rides:

select customer_id , count(booking_id) as total_rides 
from bookings 
group by customer_id order by total_rides limit 5;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues

select  
count(*) 
from bookings 
where Canceled_Rides_by_Driver = 'Customer related issue' AND 'Personal & Car related issue';

--  6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

select 
max(Driver_Ratings) as max_rate,
min(Driver_Ratings) as min_rate
from bookings 
where Vehicle_Type = 'Prime Sedan';


--  7. Retrieve all rides where payment was made using UPI:

Select 
booking_id
from 
bookings
where Payment_Method ='UPI';

-- 8. Find the average customer rating per vehicle type:
select 
Vehicle_Type,
avg(customer_rating) as avg_rate 
from bookings
group by Vehicle_Type;

-- 9. Calculate the total booking value of rides completed successfully:

SELECT SUM(Booking_Value) as total_successful_value FROM bookings WHERE
 Booking_Status = 'Success';
 
 
 -- 10. List all incomplete rides along with the reason:
 
 select 
 booking_id,
Incomplete_Rides_Reason
 from bookings
 where Incomplete_Rides_Reason ='Yes';
 
 
 
 
 
 



