SELECT 
    CustomerID,
    FIRSTNAME,
    LASTNAME,
    Email,
    Phone,
    Address,
    City,
    State,
    ZipCode,
    Updated_at,
    CONCAT(FIRSTNAME, ' ', LASTNAME) AS CUSTOMERNAME
FROM "postgres"."collector"."customers"