CREATE TABLE SALES (
    Sale_ID INT PRIMARY KEY,
    Product_ID INT,
    Customer_ID INT,
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Sale_Date DATE
);

INSERT INTO SALES VALUES
(1, 101, 201, 5, 2000, '2026-01-10'),
(2, 102, 202, 3, 3000, '2026-01-11'),
(3, 101, 203, 4, 2000, '2026-01-12'),
(4, 103, 204, 6, 1500, '2026-01-13'),
(5, 102, 205, 2, 3000, '2026-01-14'),
(6, 101, 206, 7, 2000, '2026-01-15');


SELECT Product_ID, SUM(Quantity) AS Total_Quantity
FROM SALES
GROUP BY Product_ID;


SELECT Product_ID, COUNT(Sale_ID) AS Total_Sales
FROM SALES
GROUP BY Product_ID;


SELECT Product_ID, AVG(Unit_Price) AS Average_Price
FROM SALES
GROUP BY Product_ID;


SELECT Product_ID, MAX(Unit_Price) AS Maximum_Price
FROM SALES
GROUP BY Product_ID;


SELECT Product_ID, MIN(Unit_Price) AS Minimum_Price
FROM SALES
GROUP BY Product_ID;


SELECT Product_ID,
       SUM(Quantity * Unit_Price) AS Total_Revenue
FROM SALES
GROUP BY Product_ID;


SELECT Product_ID,
       SUM(Quantity * Unit_Price) AS Total_Revenue
FROM SALES
GROUP BY Product_ID
HAVING SUM(Quantity * Unit_Price) > 10000;


SELECT Product_ID, COUNT(Sale_ID) AS Total_Sales
FROM SALES
GROUP BY Product_ID
HAVING COUNT(Sale_ID) > 2;
