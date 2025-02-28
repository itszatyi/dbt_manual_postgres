select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select storeid
from "postgres"."collector"."stores"
where storeid is null



      
    ) dbt_internal_test