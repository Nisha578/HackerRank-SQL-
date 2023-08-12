SELECT ua.id, ua.first_name, ua.last_name, cu.id,
cu.customer_name, count(cu.id)
FROM customer cu, user_account ua, contact c
WHERE cu.id = c.customer_id and c.user_account_id = ua.id
GROUP BY ua.id, ua.first_name, ua.last_name, cu.id, cu.customer_name
HAVING count(cu.id) > 1;
