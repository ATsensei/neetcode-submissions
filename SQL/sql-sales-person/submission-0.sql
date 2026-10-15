-- Write your query below
WITH scom_id as( select distinct sales_id from orders
where sales_id IN (
    Select sales_id from orders
    where com_id in (
        select com_id from company
        where name = 'CRIMSON'
    )
)
)

select name from sales_person
where sales_id NOT in (Select sales_id from scom_id)