# NICEYE Dev Project

**How to install the project:**

 - Download files first of all.

## MySQL dump file import

import the **niceye.sql** mysql dump file into your desired named database.

## Set the database connection
- Please install the following Node modules:
	 - express
	 - mysql
	 
Update the niceye-node/**server.js** file for database connection that desired connection credentials. 
These lines only for developer environment credentials. **You must update it.**

niceye-node/**server.js** **Line:13**

    host: "localhost",
    user: "root",
    password: "xdafb329",
    database: "niceye"

Then run the Node application by following command: **node server.js**

## Set and run Laravel Application
Update **.env** file with desired Node API URL by following **line:6**

    APP_API_URL=http://niceye-node.test
Please visit the laravel application url with this link: **/customers**
For instance: http://niceye-laravel.test/customers

 
### Congratulations! You ready for run the applications. Please contact me any questions or issues.
