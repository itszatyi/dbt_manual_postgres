SELECT
    ORDERITEMID,
    ORDERID,
    PRODUCTID,
    QUANTITY,
    UNITPRICE,
    QUANTITY * UNITPRICE AS TOTALPRICE,
    Updated_at
FROM
FROM {{ source('landing', 'orderitems') }}