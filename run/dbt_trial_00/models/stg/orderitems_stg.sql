
  create view "postgres"."collector"."orderitems_stg__dbt_tmp"
    
    
  as (
    SELECT
    ORDERITEMID,
    ORDERID,
    PRODUCTID,
    QUANTITY,
    UNITPRICE,
    QUANTITY * UNITPRICE AS TOTALPRICE,
    Updated_at
FROM "postgres"."collector"."orderitems"
  );