# AB_testing_website
### Company: GloBox is an online marketplace that specializes in sourcing unique and high-quality products from around the world.

* GloBox is primarily known amongst its customer base for boutique fashion items and high-end decor products. However, their food and drink offerings have grown tremendously in the last few months, and **the company wants to bring awareness to this product category to increase revenue**.

* The Growth team decides to run an A/B test that highlights key products in the food and drink category as a banner at the top of the website. The control group does not see the banner, and the test group sees it as shown below:

<img src= "https://user-images.githubusercontent.com/109522662/234674055-71d68fb0-678d-4513-a0f8-10b32df8b88b.png" width="400" height="200">

### The setup of the A/B test is as follows:
1. The experiment is only being run on the mobile website.
2. A user visits the GloBox main page and is randomly assigned to either the control or test group. This is the join date for the user.
3. The page loads the banner if the user is assigned to the test group, and does not load the banner if the user is assigned to the control group.
4. The user subsequently may or may not purchase products from the website. It could be on the same day they join the experiment, or days later. If they do make one or more purchases, this is considered a “conversion”.

# Questions:

1) How long did it run, how many users were included

    Data collected for 12 days and a total of 48943 unique users visited the website, of which 24343 were in the control group (A) and 24600 were in the      experimental group (B).

2) What metric(s) will I use to tell if this experiment is successful?

    * convertion rate (absolute %)

3) What would be an appropriate level of significance or confidence for our analysis?

    * 95%
    * Alpha = 0.05

4) What tools? 

    Python: cleaning, exploration, analysis, and visualization

5) What information do we have access to? 

  **Users Table** = demographic information

    * Id = the user ID
    * Country = ISO 3166 alpha-3 country code
    * Gender = the user's gender (M = male, F = female, O = other)

   **Groups Table** = user A/B test group assignment

    * Uid = the user ID
    * Group = the user’s test group
    * Join_dt = the date the user joined the test (visited the page)
    * Device = the device the user visited the page on (I = iOS, A = android)

  **Activity Table** = user purchase activity, containing 1 row per day that a user made a purchase

    * Uid = the user ID
    * Dt = date of purchase activity
    * Device = the device type the user purchased on (I = iOS, A = android)
    * Spent = the purchase amount in USD

6) Is there anything you would like to measure if you could?

    * Purchased products = no in the Data


