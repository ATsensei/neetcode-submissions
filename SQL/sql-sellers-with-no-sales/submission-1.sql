-- Write your query below
select s.seller_name from seller s
where s.seller_id not in (
    Select seller_id from orders 
    where Date(sale_date) >= '2020-01-01' and
            Date(sale_date) < '2021-01-01'
)
Order by s.seller_name ASC