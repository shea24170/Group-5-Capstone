# Capstone B – Week 2 Data Analysis

## Five Star Retail System

**Introduction**

The Five Star Retail System is an online retail platform developed to provide customers with a digital shopping experience. The current MVP includes Home, Products, Cart, Orders, Login, Contact and About Us pages.

The purpose of this Week 2 data analysis is to identify the important information used by the system, understand how data moves through the system, identify possible data quality risks and plan how data will be managed during future development.

## 1. Module Data Discovery
- Customer and Authentication Data: Username, Password, Session Status 
- Product and Catalogue Data: Product ID, Product Name, Product Description, Product Category, Product Price, Product Image, Product Availability (In stock/Out of Stock) 
- Shopping Cart Data: Cart Item ID, Cart Quantity, Cart Total Price, Cart Session (temporary storage) 
- Order and Check out Data: Order ID, Order Date, Order Status, Order Total, Payment Method, Delivery Address 
- Contact Page Data: Contact Name, Contact Email, Contact Message 
- About Us Page: Company Name, Company Description, Store Location, Support Email 

## 2. Project Data Inventory

| Data Item | Purpose | Who Creates It? | Who Uses It? | Required? |
|---|---|---|---|---|
| Product ID | Uniquely identifies each product | System/Admin | System, Admin, Customer | Yes |
| Product Name | Identifies the product | Admin | Customers, Admin | Yes |
| Product Description | Provides information about the product | Admin | Customers | Yes |
| Product Price | Shows the selling price of the product | Admin | Customers, Cart, Order System | Yes |
| Product Image | Provides a visual representation of the product | Admin | Customers | No |
| Stock Level | Records available product quantity | Admin/System | Admin, Order System | Yes |
| Product Quantity | Records how many units a customer selects | Customer | Cart, Order System | Yes |
| Cart ID | Identifies a customer's shopping cart | System | Customer, System | Yes |
| Cart Total | Calculates the total value of items in the cart | System | Customer, Order System | Yes |
| User ID | Uniquely identifies a customer account | System | System, Admin | Yes |
| Customer Name | Identifies the customer | Customer | Customer, Admin | Yes |
| Customer Email | Identifies and provides contact information | Customer | System, Admin | Yes |
| Customer Password | Allows the customer to authenticate their account | Customer | Authentication System | Yes |
| User Role | Determines the user's access level | Admin/System | System, Admin | Yes |
| Order ID | Uniquely identifies an order | System | System, Admin | Yes |
| Order Number | Provides a reference number for an order | System | Customer, Admin | Yes |
| Order Date | Records when an order was placed | System | Customer, Admin | Yes |
| Order Status | Shows the current progress of an order | Staff/System | Customer, Admin | Yes |
| Order Items | Records the products included in an order | Customer/System | Customer, Admin, Order System | Yes |
| Order Total | Records the total value of an order | System | Customer, Admin | Yes |

## 3. Data Sources

The main data sources for the Five Star Retail system include:

- Product catalogue
- Login form
- User account information
- Shopping cart
- Order system
- Contact form
- Future database
- Future backend/API

The current MVP is primarily frontend-based. The backend and database will be developed in Capstone B to provide persistent data storage and processing.

## 4. Data Flow

The following diagram shows how information moves through the Five Star Retail System.

```mermaid
flowchart TD
    A[Customer] --> B[Web Interface]

    B --> C[Login and User Management]
    B --> D[Product Catalogue]
    B --> E[Shopping Cart]
    B --> F[Contact Form]

    D --> E
    E --> G[Order Processing]

    C --> H[Backend Application]
    D --> H
    E --> H
    F --> H
    G --> H

    H --> I[(Database)]

    I --> J[Users]
    I --> K[Products]
    I --> L[Cart]
    I --> M[Orders]

    M --> N[Order History]
    I --> O[Reports and Administration]
```

### Data Flow Explanation

The customer interacts with the Five Star Retail web interface to log in, browse products, manage the shopping cart, place orders and submit contact information.

The frontend sends the relevant information to the backend application for processing. The backend validates and processes the information and communicates with the database.

The database is planned to store information relating to users, products, carts and orders. Processed information can then be returned to the customer interface for display.

Stored information can also support order history, reporting and administration.

The current MVP is frontend-based, while the backend and database are planned for Capstone B development.

## 5. Data Quality and Risk Analysis

| Data Item | Risk | Business Impact | Prevention Strategy |
|---|---|---|---|
| Product Name | Incorrect product name | Customer confusion | Data validation |
| Product Price | Incorrect price | Incorrect customer charges | Price validation |
| Product Quantity | Invalid quantity | Incorrect orders | Quantity validation |
| Stock Level | Incorrect stock information | Customers may order unavailable products | Stock validation |
| Customer Email | Invalid email address | Customer cannot be contacted | Email format validation |
| Customer Password | Weak password | Increased account security risk | Enforce password requirements |
| Customer Password | Unsafe password storage | User credentials may be exposed | Secure password hashing |
| User Role | Incorrect role assigned | Unauthorised access | Role-based access control |
| Order Status | Incorrect order status | Customer receives incorrect information | Controlled status updates |
| Order Total | Calculation error | Incorrect order value | Automatic calculation |
| Product ID | Duplicate or incorrect ID | Incorrect product references | Use unique identifiers |
| Order ID | Duplicate or incorrect ID | Orders may be incorrectly associated | Use unique identifiers |

## 6. Future Development Planning

### Information That Should Be Stored Permanently

The system should permanently store important information such as:

- User accounts
- Product information
- Cart information
- Order information
- Order history
- Product stock information

The planned Capstone B database will contain information relating to Users, Products, Cart and Orders.

### Information That Changes Frequently

The following information may change frequently:

- Product stock levels
- Product prices
- Cart quantities
- Cart totals
- Order status
- User account status
- User roles and permissions

### Information Restricted to Administrators

Administrative access should include:

- User roles
- User permissions
- Account status
- Product management
- Product prices
- Stock levels
- Order management
- Customer account management

Customers should only be able to access information and functions relevant to their own accounts and permitted activities.

### Information for Future Reports

Future reports may include:

- Total number of users
- Active and inactive users
- Product inventory
- Stock levels
- Total orders
- Orders by status
- Order totals
- Popular products
- Customer order history
- Customer enquiries

### Information Required for Future Capstone B Development

Future development may require:

- User database
- Product database
- Cart database
- Order database
- Authentication
- User roles and permissions
- REST APIs
- Order processing
- Inventory management
- Persistent order history
- Reporting
- Testing
- CI/CD

## 7. Data Management Plan

Project data requirements will be documented in GitHub under the `/docs` directory.

The Week 2 data analysis is stored in:

`/docs/week2-data-analysis.md`

Changes to the documentation will be tracked using GitHub commits. Pull Requests will be used for team review and collaboration.

The team will review data requirements and make improvements where necessary. The documentation can be updated as the backend, API and database requirements become clearer during future Capstone B development.

## 8. Conclusion

The Week 2 analysis identifies the main data required by the Five Star Retail system and explains how the data moves between customers, the web interface, application processes and the future database.

The identified data requirements and quality risks will support future database design, backend development, authentication, order processing, reporting and system development.
