SELECT co.country_name, count(*), AVG(i.total_price)
FROM country co, city ci, customer cu, invoice i
WHERE co.id = ci.country_id AND ci.id = cu.city_id AND cu.id = i.customer_id
GROUP BY co.country name
HAVING AVG(i.total_price) > (SELECT AVG(total price))
