# Database Testing Report

## Project Information
- Project: FIVE-STAR Retail Store
- Sprint: Capstone B - Sprint 3
- Database: five_star_retail
- Database System: MySQL 8.0

## 1. Database Setup
MySQL Server was successfully installed and verified
in GitHub Codespaces.

## 2. Database Tables
Eight database tables were verified:
- auth_user
- products_category
- products_product
- cart_cart
- cart_cartitem
- orders_order
- orders_orderitem
- contact_contactmessage

## 3. Data Verification
SQL queries were executed to verify stored records.
Five users and five categories were confirmed.
Product and order records were retrieved successfully.

## 4. Relationship Validation
SQL JOIN queries were used to check relationships.
Zero invalid orders and zero invalid order items
were found in the tested relationships.

## 5. Data Integrity Testing
The negative-stock query returned zero products
with stock below zero.

## 6. Conclusion
The MySQL database was successfully accessed and
tested. Sample data retrieval and relationship
validation produced the expected results.