Feature: Validation of Rest API in Swagger

@RegressionTest @SmokeTest 
Scenario: Get user by username
Given a request is created for getting the user
When the GET request is invoked for valid user 
Then the Response code is "200"

@RegressionTest 
Scenario: Get user by username
Given a request is created for getting the user
When the GET request is invoked with invalid username
Then the Response code is "400"

@RegressionTest 
Scenario: Get user by username
Given a request is created for getting the user
When the GET request is invoked for user not in the system
Then the Response code is "404"

@RegressionTest @SmokeTest 
Scenario: Logs user into the system with valid credentials 
Given a request is created for login the user 
When the GET request is invoked for valid username and password 
Then the Response code is "200"
And the Response body contains the session id

@RegressionTest 
Scenario: Logs user into the system with invalid credentials 
Given a request is created for login the user 
When the GET request is invoked for invalid username and password
Then the Response code is "400"

@RegressionTest @SmokeTest 
Scenario: Logs out current logged in user session
Given the user is already logged in the system 
And a request is created for logout the user 
When the GET request is invoked to logout the current logged in user session
Then the Response code is "200"

@RegressionTest
Scenario: Delete Invalid username
Given the user is already logged in the system 
And a request is created for deleting the Invalid username
When the DELETE request is invoked to delete the user
Then the Response code is "400"

@RegressionTest 
Scenario: Delete user not found
Given the user is already logged in the system 
And a request is created for deleting the username which is not present in the system
When the DELETE request is invoked to delete the user
Then the Response code is "404"

@RegressionTest 
Scenario: Update the existing user with invalid username
Given the user is already logged in the system 
When the PUT request is invoked for invalid username with the payload information
Then the Response code is "400"

@RegressionTest 
Scenario: Update the existing user with username not found
Given the user is already logged in the system 
When the PUT request is invoked for username not present in the system with the payload information
Then the Response code is "404"

@RegressionTest @SmokeTest 
Scenario: Create user
Given the user is already logged in the system
When the POST request is invoked with the payload information
Then the Response code is "200"

@RegressionTest @SmokeTest 
Scenario: Creates list of users with given input array
Given the user is already logged in the system
When the POST request is invoked to create with Array 
Then the Response code is "200"

@RegressionTest @SmokeTest 
Scenario: Creates list of users with given input array
Given the user is already logged in the system
When the POST request is invoked to create with List
Then the Response code is "200"

