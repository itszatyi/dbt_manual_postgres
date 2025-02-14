WITH CUSTOMERORDERS AS (
	SELECT C.CUSTOMERID, CONCAT(C.FIRSTNAME, ' ', C.LASTNAME) AS CUSTOMERNAME, COUNT(O.ORDERID)
AS NO_OF_ORDERS
	FROM COLLECTOR.CUSTOMERS C
	JOIN COLLECTOR.ORDERS O ON C.CUSTOMERID = O.CUSTOMERID
	GROUP BY C.CUSTOMERID, CUSTOMERNAME
	ORDER BY NO_OF_ORDERS DESC
)

SELECT CUSTOMERID, CUSTOMERNAME, NO_OF_ORDERS
FROM CUSTOMERORDERS