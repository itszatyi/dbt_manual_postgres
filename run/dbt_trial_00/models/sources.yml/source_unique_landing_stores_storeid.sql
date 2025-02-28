select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    storeid as unique_field,
    count(*) as n_records

from "postgres"."collector"."stores"
where storeid is not null
group by storeid
having count(*) > 1



      
    ) dbt_internal_test