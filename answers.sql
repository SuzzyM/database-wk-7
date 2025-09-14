Question 1
CREATE TABLE ProductDetail (
    Order_id INT PRIMARY KEY,
    Customer_Name VARCHAR(100)
);

-- Products table (atomic values)
CREATE TABLE ProductDetail_Products (
    Order_id INT,
    Product_Name VARCHAR(50),
    FOREIGN KEY (Order_id) REFERENCES ProductDetail(Order_id)
);

-- Insert data
INSERT INTO ProductDetail (Order_id, Customer_Name) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

INSERT INTO ProductDetail_Products (Order_id, Product_Name) VALUES
(101, 'Laptop'),
(101, 'Mouse'),
(102, 'Tablet'),
(102, 'Keyboard'),
(102, 'Mouse'),
(103, 'Phone');



Question 2
CREATE TABLE OrderId (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO OrderId (OrderId, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

CREATE TABLE OrderId_Details (
    OrderID INT,
    Product VARCHAR(50),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES OrderId(OrderID),
    PRIMARY KEY (OrderID, Product)
);

INSERT INTO OrderId_Details (OrderId, Product, Quantity) VALUES
(101, "Laptop", 2),
(101, "Mouse", 1),
(102, "Tablet", 3),
(102, "Keyboard", 1),
(102, "Mouse", 2),
(103, "Phone", 1);