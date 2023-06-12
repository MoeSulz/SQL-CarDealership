SELECT 	i.dealership_id, d.name, i.vin
FROM cardealerships.inventory i
INNER JOIN cardealerships.dealership d ON i.dealership_id = d.dealership_id;