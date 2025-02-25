
    
    

select
    customerid as unique_field,
    count(*) as n_records

from "postgres"."collector"."customers"
where customerid is not null
group by customerid
having count(*) > 1


