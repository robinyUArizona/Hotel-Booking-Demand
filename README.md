# Hotel Booking Demand
The growth of online distribution has grown by 46% from 2014 to 2018. The hold has shifted from manual bookings to online travel agencies by almost 68% in 2018. The hospitality industry is facing issues in revenue generation due to ease of cancellations of the bookings made. Based on the data collected in 2018, almost 40% of the revenue is cancelled before arrival. This comes with the possibility of easy online bookings and their cancellations. It has become crucial to perform an analysis to help the industry to maximize its revenue generation and predict false bookings and probable cancellations in order to use their resources judiciously.

![Example Image](hotel_booking_pic.PNG)





## Problem Statement:
The growth of online distribution has grown by 46% from 2014 to 2018. The hold has shifted from manual bookings to online travel agencies by almost 68% in 2018. The hospitality industry is facing issues in revenue generation due to ease of cancellations of the bookings made. Based on the data collected in 2018, almost 40% of the revenue is cancelled before arrival. This comes with the possibility of easy online bookings and their cancellations. 

Our main aim with this project is to help the hospitality industry generate the maximum revenue with the resources available to them based on the factors identified. Specifically, in this project, our goal is to:
- Predict the future possibility of cancellation using Predictive Analytis approach - Factors like period of stay, weather, holiday season and time of the year for the booking may play a crucial role in determining whether the booking will be productive or not. This will determine whether the booking made will be productive based on historical data.
- Descriptive analytics to further understand patterns, trends, and anomalies in data.
- Evaluate the performance of various models and select best two models for tuning process.




## This project is divided in 5 sections:

    1.Data Exploration
    
        1.1 The Data, Data Description & Preprocessing

        1.2 Removing Duplicate observations
    
        1.3 Assessing Missing Values
    
        1.4 Investigating the datasets
        
        1.5 EDA (Exploratory Data Analysis)
        
        1.6 Re-encoding Some Features (Feature Engineering)


    2.0 Some Data Visualization
     
     
    3.0 Feature Engineering
        3.1 Numerical Columns
                A. Correlation Matrix and Heat-map
                B. Recursive Feature Elimination
                C. Feature Importance (ExtraTreesClassifier())
        3.2 Categorical Columns
                A. Chi Square Test & Fisher Score
     
      
    4.0 Model Selection: Logitic Regression, Gradient Boosting and Random Forest
        
        4.1 Feature Importances



## File descriptions
- EDA-Feature Engineering -- Hotel-Booking_Demand.ipynb  <br/>
- ML-modelling -- Hotel Bookings Cancellation Prediction.ipynb   <br/>
- readme.md - This file <br/>


## Datasets
The dataset is from Hotel Booking Demand Datasets availabe on Kaggle (https://www.kaggle.com/jessemostipak/hotel-booking-demand). This dataset contains booking information for a city hotel and a resort hotel, without including any personal information of the customer. 
• hotel_bookings.csv - the data set (contains 119390 records which has 32 different features) 


## Few Data fields
- Length of stay - The length of stay determines the duration of the stay by the number of nights stayed at the hotel <br>
- Number of adults – This provides the number of adults that stayed at the hotel <br>
- Number of parking spaces - This informs us about the number of available parking spaces required by the customers <br>
- Weekends or the Weekdays - This tells us about whether the booking was made for a weekday or weekend <br>
- Deposit or not – This describes whether there was a deposit made with the booking <br>
- Canceled - This informs us if the booking was cancelled <br>
- No Show - This informs us if there is a no show


