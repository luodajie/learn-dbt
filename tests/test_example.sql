select sum(c_acctbal) 
from {{ ref('customer') }}
having sum(c_acctbal) < 100000000