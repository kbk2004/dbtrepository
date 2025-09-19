{{
    config(
        materialized='table',
        transient=false
    )
}}
select c1:id::number as id ,
 c1:first_name::varchar as first_name ,
  c1:last_name::varchar as last_name ,
   c1:car_make::varchar as car_make ,
    c1:Car_Model::varchar as Car_Model ,
     c1:Car_Model_Year::number as Car_Model_Year  from {{ source('s1', 'T_SSD') }} where file_name='car.json'