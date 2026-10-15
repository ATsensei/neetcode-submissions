-- Write your query below
select u.name, COALESCE(Sum(r.distance),0) as travelled_distance from users u
left join rides r on u.id = r.user_id
Group by u.name
Order by travelled_distance DESC, u.name ASC