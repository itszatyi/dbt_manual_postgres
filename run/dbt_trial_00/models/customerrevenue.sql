
  
    

  create  table "postgres"."consumption"."customerrevenue__dbt_tmp"
  
  
    as
  
  (
    SELECT 
    OS.CUSTOMERID,
    C.CUSTOMERNAME,
    SUM(OS.ORDERCOUNT) AS ORDERCOUNT,
    SUM(OS.REVENUE) AS REVENUE
FROM 
    "postgres"."processing"."orders_fact" OS
JOIN 
    "postgres"."collector"."customers_stg" C on OS.CustomerID = C.CUSTOMERID
GROUP BY
    OS.CUSTOMERID,
    C.CUSTOMERNAME
  );
  