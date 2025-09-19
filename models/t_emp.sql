{{
    config(
        materialized='table',
        transient=false
    )
}}
select empno,ename,sal,nvl(comm,0) as comm ,nvl(Sal,0)+nvl(comm,0) as net_Sal 
from {{ source('s1', 'emp') }}