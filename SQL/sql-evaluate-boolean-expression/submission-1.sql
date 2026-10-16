-- Write your query below
 

select e.*,
 Case 
 when e.operator = '=' and lv.value = rv.value then True
 when e.operator = '>' and lv.value > rv.value then True
 when e.operator = '<' and lv.value < rv.value then True
 else False 
 end as value  from expressions e 

 Left join variables lv on e.left_operand = lv.name
 Left join variables rv on e.right_operand = rv.name  