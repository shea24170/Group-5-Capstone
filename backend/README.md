FIVE-STAR Retail System – Backend Development

1. Introduction

This project is part of our Capstone B – Sprint 3 assessment. The FIVE-STAR Retail System is a retail shopping website that we are developing as a group.
The part of the project that I worked on primarily was configuring the backend server, linking it to our MySQL database, designing a Products API and displaying the product information on the website.
On this project, I learnt about the relationship between the frontend, backend and the database.

2. Tools and Technologies Used
-Node.js:is used to execute JavaScript on the back-end.
-Express.js was used to develop the backend server and Products API.
-MySQL: Data base tool to store and manage the project's data.
- mysql2:An interface for Node.js to connect to the MySQL database.
-dotenv: This will load database connection settings from the .env file.
HTML is a language used to design the website layout.
- CSS: Used to style and design the website.
-JavaScript: Used to show the product information which is fetched from the backend.
- GitHub Codespaces:Used to write, run and test the project code.
- GitHub: To store changes, monitor progress of development and to manage the group project.
3. Backend Setup

I first worked in our GitHub repository's `backend` folder.

Installed necessary packages for NodeJS, and started an Express Server with server.js.

Once it's up and running, I checked the server with the terminal. Successfully launched the server on port 3000.

The main backend files include:
server.js – Express Server and Products API.
- `db.js` is the file that will manage the connection to the MySQL database.
- `test-db.js` – Tests the database connection.
- `package.json` – The project dependencies are stored in this file.
-.env – Contains local database configuration.
- .gitignore – Avoids uploading the .env file and the node_modules folder to github.

4. MySQL Database Connection

This was one of my primary responsibilities, to integrate the back end with our MySQL database.

We are working on a database called five_star_retail.

I set up the connection in `db.js` with mysql2 and loaded the database settings with dotenv from the `.env` file.

Some problems with connecting to the database during set up. I looked at the configuration and tried the connection until it was successful.

I ran the following test to check connectivity:

`node test-db.js`

The terminal displayed:

Successfully connected to MySQL Database.

This indicated that the back-end was able to communicate with MySQL.

5. Database Testing

I linked the database and found the tables available and tried to fetch data from the tables.

There are eight tables in the database:

1. `auth_user`
2. `products_category`
3. `products_product`
4. `cart_cart`
5. `cart_cartitem`
6. `orders_order`
7. `orders_orderitem`
8. `contact_contactmessage`

I ran a test on the database and found that there are 10 products, 5 product categories, and 5 user records.

I also obtained product details such as product names, descriptions, prices and the quantity of stocks.

This enabled me to build some understanding of SQL queries and information stored in various tables within a database.

6. Products API Development
I successfully connected with MySQL and started working on the API for getting product information.

I've added the following endpoint to server.js:

`GET /api/products`

This endpoint provides access to product records in the table products_product and returns the information in JSON format.

I did a test on the API from the browser and I did confirm that the product records were being returned successfully.

Also added basic error handling to catch if the database query fails.

7. Frontend and Backend Integration

When Products API was working, I added it to our current retail site.

I've updated the `products.html` with JavaScript fetch() to allow the page to fetch the product information from the back-end.

Upon these changes, the website was able to show the product names, prices and quantity in stock from the MySQL database.

I tried the web site with the forwarded port in GitHub Codespaces.

Add To Cart buttons were seen but not fully integrated to the shopping cart during this work.

This component of the project was instrumental in learning how to use a frontend page to communicate with a backend API to retrieve the information in the database.

8. Running the Backend

To use the backend, type "cd backend" in the terminal.

Install the packages:

```bash
npm install
```

Check that the settings for the database connection are correct in the `.env` file.

Test DB connection:

```bash
node test-db.js
```

To start the backend server:

```bash
node server.js
```

The default port for the server is 3000.

To test the Products API, click on:

`http://localhost:3000/api/products`

The forwarded port 3000 URL can be used when running on GitHub Codespaces.

## 9. Testing and Results

Did a few test during the back end development.

These included installing the required packages, testing the MySQL connection, checking database tables, retrieving product records and starting the Express server.

I also tried out the Products API and ensured the product information looked good on the site.

There were some development issues, particularly related to database connectivity and server configurations. I looked through the Terminal logs and made corrections until it was working.

I took screenshots of the database tests, the output of the server, the output of the API and GitHub commits as proof of work.

10. GitHub Version Control

I have been working on the branch of our GitHub repository called sprint3-backend.

I followed my progress as I developed by creating commits on GitHub.

My contributions were creating the backend project structure, setting up the Express server, configuring the MySQL connection and implementing the Products API.

My experience with GitHub enabled me to learn how a developer can manage changes and stay up to date on what happens in a group project.

11. Remaining Work

Some parts of the retail system need further development, and the backend server, MySQL connection and Products API are working.

These include complete user authentication, database based shopping cart and order processing.

In the further development and testing of the project, these features can be developed.

12. What I Learned
In this project, I acquired hands-on experience with Node.js, Express.js, MySQL and API development.

Inform myself about how to set up a backend server, link it to a database, and obtain details from it using SQL queries.

Also learned about GitHub Codespaces, terminal commands, and errors.

What I learned the most was how the front end, back end and database communicate with one another.

I think this project has been a great help for me in getting my hands dirty with technical work and gaining confidence in backend development.
