CREATE database RetailSalesData;
USE RetailSalesData;

CREATE TABLE Sales_Data_Transaction(
customer_id VARCHAR(255) PRIMARY KEY,
trans_date VARCHAR(255),
tran_amount INT);
CREATE TABLE Sales_Data_Response(
customer_id VARCHAR(255) PRIMARY KEY,
response INT);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
INTO TABLE Sales_Data_Transaction
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

EXPLAIN SELECT * FROM Sales_Data_Transaction WHERE CUSTOMER_ID='C55295';
CREATE INDEX idx_id ON Sales_Data_Transaction(CUSTOMER_ID);
EXPLAIN SELECT * FROM Sales_Data_Transaction WHERE CUSTOMER_ID='C55295';
