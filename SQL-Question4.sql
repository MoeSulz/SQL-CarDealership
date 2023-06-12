SELECT i.Dealership_id, d.Name AS "Dealership Name", i.Vin
FROM cardealerships.inventory i
INNER JOIN cardealerships.dealership d ON i.Dealership_id = d.Dealership_ID
WHERE i.vin = "SOOK29SB29TL";