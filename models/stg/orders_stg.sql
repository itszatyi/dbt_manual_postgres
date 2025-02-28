SELECT
    ORDERID,
    ORDERDATE,
    CUSTOMERID,
    EMPLOYEEID,
    STOREID,
    Status AS STATUSCD,
    CASE
        WHEN STATUS = '01' THEN 'In Progress'
        WHEN STATUS = '02' THEN 'Completed'
        WHEN STATUS = '03' THEN 'Cancelled'
        ELSE NULL
    END AS STATUSDESC,
    Updated_at
FROM {{ source ('landing', 'orders') }}