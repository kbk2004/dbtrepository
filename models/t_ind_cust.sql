select c_name,c_address,n_name from {{ source('s1', 't_customer') }} c 
inner join {{ source('s1', 't_nation') }} n where C_NATIONKEY=n_NATIONKEY
and n_name ='INDIA'