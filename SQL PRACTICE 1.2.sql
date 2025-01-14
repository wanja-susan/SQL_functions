-- You manage a bookshop's sales records in a table called book_sales with the following columns:
--  Book_Title, Author, Customer_ID, Sale_Date, and Sale_Amount. 
-- Create the book_sales table

DROP TABLE IF EXISTS book_sales;
CREATE TABLE book_sales (
    Book_Title VARCHAR(100),
    Author VARCHAR(100),
    Customer_ID VARCHAR(50),
    Sale_Date DATE,
    Sale_Amount INT
);

-- Insert sample data into book_sales table
INSERT INTO book_sales VALUES ('The Art of Data', 'John Smith', 'C101', '2025-01-01', 1200);
INSERT INTO book_sales VALUES ('The Art of Data', 'John Smith', 'C102', '2025-01-02', 1200);
INSERT INTO book_sales VALUES ('SQL for Beginners', 'Jane Doe', 'C103', '2025-01-03', 800);
INSERT INTO book_sales VALUES ('The Python Guide', 'Alan Turing', 'C104', '2025-01-04', 1500);
INSERT INTO book_sales VALUES ('The Art of Data', 'John Smith', 'C105', '2025-01-04', 1200);
INSERT INTO book_sales VALUES ('Machine Learning Made Simple', 'Grace Hopper', 'C102', '2025-01-05', 1800);
INSERT INTO book_sales VALUES ('SQL for Beginners', 'Jane Doe', 'C106', '2025-01-05', 800);
INSERT INTO book_sales VALUES ('The Python Guide', 'Alan Turing', 'C107', '2025-01-06', 1500);
INSERT INTO book_sales VALUES ('The Python Guide', 'Alan Turing', 'C104', '2025-01-07', 1500);
INSERT INTO book_sales VALUES ('The Art of Data', 'John Smith', 'C101', '2025-01-07', 1200);
INSERT INTO book_sales VALUES ('Machine Learning Made Simple', 'Grace Hopper', 'C103', '2025-01-08', 1800);

-- View the data inserted
SELECT * FROM book_sales;

-- Write a query to generate a report showing each book title, 
-- the total number of copies sold, total revenue, and the number of unique customers who purchased the book.
SELECT Book_Title, COUNT(*) AS Books_sold, SUM(Sale_Amount) AS Total_Revenue,
COUNT(DISTINCT Customer_ID) AS Unique_Customers
FROM book_sales
GROUP BY Book_Title
ORDER BY Total_Revenue DESC;
