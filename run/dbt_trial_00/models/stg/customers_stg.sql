
  create view "postgres"."collector"."customers_stg__dbt_tmp"
    
    
  as (
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
  );