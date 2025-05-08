-- Original Table: ProductDetail
-- Transforming into 1NF
SELECT OrderID, CustomerName, TRIM(Product) AS Product
FROM (
  SELECT OrderID, CustomerName, 
         UNNEST(STRING_TO_ARRAY(Products, ',')) AS Product
  FROM ProductDetail
) AS NormalizedProducts;


-- Orders Table
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;


-- OrderDetails Table
SELECT OrderID, Product, Quantity
FROM OrderDetails;
