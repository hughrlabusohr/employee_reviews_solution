# Homework Assignment for 2016.02.17

## Description

In this assignment, we took our ruby program for Employee Reviews and modified it to store information "permanently" in a databse. We did this by doing a database migration with the assistance of ActiveRecord (a Ruby gem) & sqlite3. Additionally, changes had to be made to the code to enable the program to interact with the database we created. As a result, the test-suite had to be modified to interact with the database, and reflect changes introduced to the updated program.


## Deliverables

* **My GitHub repository.**

* **A migration to create a database.**  
My migration is located in employee_reviews_migration.rb
* **A modified README.**
You are reading it, right this very moment.
* **A modified test suite.**
This file is: employee_reviews_test.rb

* **An ERD.**
https://www.lucidchart.com/invitations/accept/2b687741-2193-40ee-889a-51586ff21e1e

## Objectives

The point of this assignment, is to make sure we

* Understand how the database can store information between code executions
* Understand ActiveRecord
* Are able to write migrations
* Are able to create, read from, and write to a development database
* Can build a test suite which can access a test database
