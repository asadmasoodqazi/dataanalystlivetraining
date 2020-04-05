-- OPERATORS EXAMPLES
select * from INSURANCE.dbo.ORDERS
-- Arithematic Operators Example ( +,-,x,/)
--addition, subtraction
select ORD_AMOUNT,ADVANCE_AMOUNT,ORD_AMOUNT-ADVANCE_AMOUNT as REMAINING_AMOUNT 
from INSURANCE.dbo.ORDERS  where ORD_AMOUNT-ADVANCE_AMOUNT >500--gets the remaining amount to be paid by the Customer

-- + operator can be used to concatenate strings
select RTRIM(CUST_CITY)+', '+CUST_COUNTRY as [ADDRESS] from INSURANCE.dbo.CUSTOMER

--Multiplication
select ORD_AMOUNT, ORD_AMOUNT-(ORD_AMOUNT*0.25) as discounted_amount
from INSURANCE.dbo.ORDERS;  --discount on the amount

--Multiplication and division
select ORD_AMOUNT, ORD_AMOUNT-(ORD_AMOUNT*25/100) as discounted_amount
from INSURANCE.dbo.ORDERS;  --discount on the amount


--Relational Operator
SELECT CUST_NAME,OPENING_AMT,  OUTSTANDING_AMT,PAYMENT_AMT, RECEIVE_AMT
FROM INSURANCE.dbo.CUSTOMER 
WHERE(OUTSTANDING_AMT-PAYMENT_AMT)<RECEIVE_AMT;


-- Logical Operators

SELECT  cust_code, cust_name,
cust_city,cust_country,grade
FROM INSURANCE.dbo.CUSTOMER
WHERE  cust_country  =  'UK' OR grade  =  2;

SELECT  cust_code, cust_name,
cust_city,cust_country,grade
FROM INSURANCE.dbo.CUSTOMER where NOT grade=2;


-- SPECIAL OPERATORS--

--IN
SELECT *
FROM INSURANCE.dbo.AGENTS
WHERE WORKING_AREA NOT IN('London','Mumbai','Chennai');

--BETWEEN
SELECT * FROM INSURANCE.dbo.ORDERS 
where ORD_DATE BETWEEN '2008-07-01' and '2008-07-30'

--LIKE 
select * from INSURANCE.dbo.ORDERS
where ORD_DATE like '%05%'  --CUST_NAME like 'St%'

--IS NULL 
SELECT * FROM [AdventureWorks2014].[Person].[Address] where AddressLine2 is null