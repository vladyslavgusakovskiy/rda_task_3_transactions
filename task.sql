-- Use our database
USE ShopDB; 

-- Some data should be created outside the transaction (here)
INSERT INTO Orders (CustomerID, Date)
    VALUES (1, "2023-01-01");

INSERT INTO OrderItems (OrderID, ProductID, Count)
    VALUES (1, 1, 5)

-- Start the transaction 
START TRANSACTION; 

-- And some data should be created inside the transaction 
UPDATE Products SET WarehouseAmount = WarehouseAmount - 5 WHERE ID = 1

COMMIT; 
