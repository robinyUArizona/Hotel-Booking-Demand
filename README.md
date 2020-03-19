# Hotel Booking Demand
![](hotel_booking_pic.PNG)

The hospitality industry is facing issues in revenue generation due to ease of cancellations of the bookings made. This comes with the possibility of easy online bookings. It has become very important to run an analysis to help the industry to maximize its revenue generation and predict false bookings and probable cancellations in order to use their resources judiciously.
Our main aim with this project is to help the hospitality industry generate the maximum revenue with the resources available to them. Specifically, in this project, our goal is to:
• Predict the future possibility of cancellation 
• Predict the future possibility of no shows

# File descriptions
**.ipynb** - sefsdfs <br/>
**readme.md** - This file <br/>


# Datasets
The dataset is from Hotel Booking Demand Datasets availabe on Kaggle (https://www.kaggle.com/jessemostipak/hotel-booking-demand). This dataset contains booking information for a city hotel and a resort hotel, without including any personal information of the customer. 
• hotel_bookings.csv - the data set (contains 119390 records which has 32 different features) 


# Data fields
**hotel** -  Hotel (H1 = Resort Hotel or H2 = City Hotel)<br/>
**is_canceled** - Value indicating if the booking was canceled (1) or not (0) <br/>
**lead_time** - Number of days that elapsed between the entering date of the booking into the PMS and the arrival date <br/>
**arrival_date_year** - Year of arrival date <br/>
**arrival_date_month** - Month of arrival date <br/>
**arrival_date_week_number** - Week number of year for arrival date <br/>
**arrival_date_day_of_month** -  Day of arrival date <br/>
**stays_in_weekend_nights** - Number of weekend nights (Saturday or Sunday) the guest stayed or booked to stay at the hotel <br/>
**stays_in_week_nights** - Number of week nights (Monday to Friday) the guest stayed or booked to stay at the hotel <br/>
**adults** - Number of adults <br/>
**children** - Number of children <br/>
**babies** -  Number of babies <br/>
**meal** - Type of meal booked. Categories are presented in standard hospitality meal packages: Undefined/SC – no meal package; BB – Bed & Breakfast; HB – Half board (breakfast and one other meal – usually dinner); FB – Full board (breakfast, lunch and dinner) <br/>
**country** - Country of origin. Categories are represented in the ISO 3155–3:2013 format <br/>
**market_segment** - Market segment designation. In categories, the term “TA” means “Travel Agents” and “TO” means “Tour Operators” <br/>
**distribution_channel** - Booking distribution channel. The term “TA” means “Travel Agents” and “TO” means “Tour Operators”<br/>
**is_repeated_guest** - Value indicating if the booking name was from a repeated guest (1) or not (0) <br/>
**previous_cancellations** -  Number of previous bookings that were cancelled by the customer prior to the current booking <br/>
**previous_bookings_not_canceled** - Number of previous bookings not cancelled by the customer prior to the current booking <br/>
**reserved_room_type** - Code of room type reserved. Code is presented instead of designation for anonymity reasons. <br/>
**assigned_room_type** - Code for the type of room assigned to the booking. Sometimes the assigned room type differs from the reserved room type due to hotel operation reasons (e.g. overbooking) or by customer request. Code is presented instead of designation for anonymity reasons. <br/>
**booking_changes** - Number of changes/amendments made to the booking from the moment the booking was entered on the PMS until the moment of check-in or cancellation <br/>
**deposit_type** -  Indication on if the customer made a deposit to guarantee the booking. This variable can assume three categories: No Deposit – no deposit was made; Non Refund – a deposit was made in the value of the total stay cost; Refundable – a deposit was made with a value under the total cost of stay. <br/>
**agent** - ID of the travel agency that made the booking <br/>
**company** - ID of the company/entity that made the booking or responsible for paying the booking. ID is presented instead of designation for anonymity reasons <br/>
**days_in_waiting_list** - Number of days the booking was in the waiting list before it was confirmed to the customer <br/>
**customer_type** - Type of booking, assuming one of four categories:
Contract - when the booking has an allotment or other type of contract associated to it; Group – when the booking is associated to a group; Transient – when the booking is not part of a group or contract, and is not associated to other transient booking; Transient-party – when the booking is transient, but is associated to at least other transient booking <br/>
**adr** - Average Daily Rate as defined by dividing the sum of all lodging transactions by the total number of staying nights <br/>
**required_car_parking_spaces** -  Number of car parking spaces required by the customer <br/>
**total_of_special_requests** - Number of special requests made by the customer (e.g. twin bed or high floor)<br/>
**reservation_status** - Reservation last status, assuming one of three categories: Canceled – booking was canceled by the customer; Check-Out – customer has checked in but already departed; No-Show – customer did not check-in and did inform the hotel of the reason why <br/>
**reservation_status_date** - Date at which the last status was set. This variable can be used in conjunction with the ReservationStatus to understand when was the booking canceled or when did the customer checked-out of the hotel <br/>



