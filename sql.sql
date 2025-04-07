create database OLA ; 
use OLA ;
select *from bookings;
#1. Retrieve all successful bookings:

select* from bookings where booking_status = "success";
Create View Successful_Bookings As
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

#2. Find the average ride distance for each vehicle type:

SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM bookings GROUP BY
Vehicle_Type;
Create View ride_distance_for_each_vehicle As
SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM bookings
GROUP BY Vehicle_Type;

#3. Get the total number of cancelled rides by customers:

SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'cancelled by Customer';
Create View cancelled_rides_by_customers As
SELECT COUNT(*) FROM bookings
WHERE Booking_Status = 'cancelled by Customer';


#4. List the top 5 customers who booked the highest number of rides:

SELECT Customer_ID, COUNT(Booking_ID) as total_rides FROM bookings GROUP BY
Customer_ID ORDER BY total_rides DESC LIMIT 5;
Create View Top_5_Customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;


#5. Get the number of rides cancelled by drivers due to personal and car-related issues:

SELECT COUNT(*) FROM bookings WHERE cancelled_Rides_by_Driver = 'Personal & Car
related issue';
Create View Rides_cancelled_by_Drivers_P_C_Issues As
SELECT COUNT(*) FROM bookings
WHERE cancelled_Rides_by_Driver = 'Personal & Car related issue';


#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating FROM
bookings WHERE Vehicle_Type = 'Prime Sedan';
Create View Max_Min_Driver_Rating As
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';


#7. Find the average customer rating per vehicle type:

SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM bookings
GROUP BY Vehicle_Type;
Create View AVG_Cust_Rating As
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;



#8. Calculate the total booking value of rides completed successfully:

SELECT SUM(Booking_Value) as total_successful_value FROM bookings WHERE
Booking_Status = 'Success';
Create View total_successful_ride_value As
SELECT SUM(Booking_Value) as total_successful_ride_value
FROM bookings
WHERE Booking_Status = 'Success';


#9. List all incomplete rides along with the reason:

SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides =
'Yes';
Create View Incomplete_Rides_Reason As
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';

#10- Most Popular Pickup and Drop-off Locations
SELECT 
    pickup_location,
    COUNT(*) AS total_pickups
FROM bookings
GROUP BY pickup_location
ORDER BY total_pickups DESC;
CREATE VIEW FREQUENT_PICKUP_LOCATION as SELECT 
    pickup_location,
    COUNT(*) AS total_pickups
FROM bookings
GROUP BY pickup_location
ORDER BY total_pickups DESC;






