
    
    

select
    storeid as unique_field,
    count(*) as n_records

from "postgres"."collector"."stores"
where storeid is not null
group by storeid
having count(*) > 1


