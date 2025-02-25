SELECT
    O.ORDERID,
    O.ORDERDATE,
    O.CUSTOMERID,
    O.EMPLOYEEID,
    O.STOREID,
    O.STATUSCD,
    O.STATUSDESC,
    O.Updated_at,
    COUNT(DISTINCT O.ORDERID) AS ORDERCOUNT,
    SUM (OI.TOTALPRICE) AS REVENUE
FROM 
    "postgres"."processing"."orders_stg" O
JOIN
    "postgres"."processing"."orderitems_stg" OI ON O.ORDERID = OI.ORDERID
GROUP BY
    O.ORDERID,
    O.ORDERDATE,
    O.CUSTOMERID,
    O.EMPLOYEEID,
    O.STOREID,
    O.STATUSCD,
    O.STATUSDESC,
    O.Updated_at