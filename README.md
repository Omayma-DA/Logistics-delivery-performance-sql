# Logistics-delivery-performance-sql
SQL based logistics delivery performance and cost analysis project

# Logistics Delivery Performance Analysis

This project is my practice project for learning data analysis with SQL. I wanted to understand how deliveries work in logistics and how data can help explain where problems are happening. 

I built this project step by step,focusing on thinking like an analyst, not just typing SQL commands.

# Why I did this project?
My goals were:
  - learn how to read a question and fihure out what data I actually need
  - get comfortable choosing the right columns
  - practice real business questions, not just school examples
  - build something I can explain in an interview
The datase is synthetic, but I tried to make it realistic based on logistics research and how shipping companies track orders.

# What's in the Data
Each row is one shipment. SOme important columns are:
  - order_id - unique ID for each shipment
  - cutomer_id - helps find repeat customers
  - warehouse - where the package was shipped from
  - carrier - DHL, FedEx, UPS, USPS, etc.
  - ship_date/delivery_date - allows me to calculate delivery time
  - distance_km - package weight
  - shipping_cost - how much shipping cost
  - status - Delivered or Late
    
#Questions I Tried to Answer
    1- Are deliveries on time?
         I check how many were delivered late vs on time, and calculated the percentage.
    2- Which warehouses struggle the most?
         I compared late delivery rates across warehouses to see where delays are happening.
    3- Which carriers cost more?
         I looked at average shipping cost by carrier.
    4- How long do deliveries usually take?
         I calculated (delivery_date - ship_date) to see the average number of days.
    5- Does distance affect cost?
         I grouped distance into short/ medium/ long and checked how cost changes.
#What I learned
      - Don't start with SQL - Start with the question
      - Pic
      
# Future Ideas
Some things that I want to add/ improve
    - add dashboards in Power BI or Tableau ( or maybe both - I'll see how that goes!)
    - add more logistic features like shipping zones and fual charges
    - analyze trends by month or season

# Dashboards (Power BI)
Focus areas:
  - late delivery trend over time
  - delivery performance by warehouse
  - cost vs distance visual comparison
I designed it so operations managers can see performance at a glance.
(Dashboards coming soon. Will upload screenshots and files.)

 # Key Takeaways From This Project 
 This project helped me sharpen how I approach operational data problems, specifically in logistics.
 Some of the areas I focused on:
   - Validating assumptions instead of blindly trusting the data
   - Seperating descriptive analysis (what is happening) from diagnostic analysis (why it is happening)
   - Designing SQL so it is reusable, readable and production friendly
   - Thinking about insights flow from SQL into dashboards and decsion making
I approached this peoject the way I would appriach work in real environment:
  identify the problem -> build queries -> verify results -> communicate insights clearly.


