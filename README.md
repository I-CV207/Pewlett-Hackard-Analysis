# Pewlett-Hackard-Analysis

## Overview of the analysis

The purpose of the following analysis is to create a database that holds the information of the employees from ther company, we are using some initial CSV files that have the most relevant information, from there a few querries will be programmed to get the tables of retiring personnel by title and employee eligible for the mentorship programin order to provide reliable information for the upcoming **"silver tsunami"**.

## Results
From the obtained queries, a few things worth mention are:

- In the table, *retirment_titles* there are 133,776 records, however such records have duplicates on their employe numbers as they are grouped by their title due to the fact that throught the years some have recieved promotions.

- The table *unique_titles* has 90,398 records, compared to the *retirement_titles* it has 43,378 less records due to the fact previously mentioned that these people recieved promotion through the years, however this does not mean that 43,378 people have recieved promotions as some of them have recieved 1 or 2 promotions, to be precise 42,468 people have recieved at least one promotion (41,558 have got 1 and 910 have got 2 through the years).

![2 promotions](https://user-images.githubusercontent.com/83261520/127404445-14e4f368-5875-4bd6-ac1b-2cbe90c097b0.png)

***Count of people with 1 promotion***

![3 promotions](https://user-images.githubusercontent.com/83261520/127404448-2a202c34-b519-4cb7-898d-e3b6b8f3648c.png)

***Count of people with 2 promotions***

- In the table *retiring_titles* we found the total ammount of people who is retiring grouped by his title name, most of the people that is retiring are Senior Enginners, Senior Staff and Engineers.

![retiring_titles](https://user-images.githubusercontent.com/83261520/127406147-c3fbdcef-d12f-4bd7-8df6-baed64b98dc4.png)

***Retiring titles table***
  
- Lastly in the table *mentorship_elegibilty* we can take a look at the people who are elegible for a mentorship program, as long as they fullfill the requirements which is to have been born in the year 1965 which leaves us with 1,549 people who are elegible.

## Summary

Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?

There are 90,398 people who are retiring, the main roles that have to be taking care of are Senior Engineers (29,414) which represents 33% of people retiring, in second place Senior Staff (28,254) with 31% and in third place Engineers (14,222) with 16%, these three combined make the 80% of the total count of retiring people and therefore are the most critical positions to cover. 


- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

For the mentorship program there are 1,549 people who are elegible, in relation to the people who is retiring there is a relation of 58 to 1 of people retiring against poeple in the mentorship program.

Some additional queries can be obtained to provide more insight, some of proposals are mentioned below:

1. Employees who are retiring by department in order to see the proportion of each one as it was done with the *retiring_titles* table.
2. List of employees without the people who are retiring, which basically is the opposite of the table *unique_titles*, this way we can know how many people are remaining and get the proportion against the people who are retiring.
3. List of employees without the people who are retiring, grouped by their title, to know the proportion of remaining personnel by title, this one could be used to compare it with *retiring_titles* an therefore have more information of wich positions are more critical to cover first based on a coverage percentage.
