SELECT properties.id as id, title, cost_per_night, avg(rating) as average_rating
FROM property_reviews
JOIN properties ON property_id=properties.id
GROUP BY properties.id
HAVING city LIKE '%Vancouver' AND avg(rating)>=4
ORDER BY cost_per_night ASC;