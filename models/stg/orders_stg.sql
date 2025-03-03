SELECT
    ORDERID,
    ORDERDATE,
    CUSTOMERID,
    EMPLOYEEID,
    STOREID,
    Status AS STATUS,
    CASE
	WHEN STATUS = 'Processing' THEN 'Order placed, not yet shipped'                  
	WHEN STATUS = 'Shipped' THEN 'Order has been shipped, not yet been delivered'
	WHEN STATUS = 'Delivered' THEN 'Order has been received by customers'
	WHEN STATUS = 'Pending' THEN 'Customer indicated they want to return this item'
	WHEN STATUS = 'Returned' THEN 'Item has been returned'
    ELSE NULL
END AS STATUSDESC,
    Updated_at
FROM {{ source ('landing', 'orders') }}