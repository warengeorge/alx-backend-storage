-- a SQL script that lists all bands, ranked by their longevity

SELECT band_name, YEAR(MAX(split)) - YEAR(MIN(formed)) AS lifespan
	FROM metal_bands
	WHERE style LIKE '%Glam rock%'
	ORDER BY lifespan DESC;

