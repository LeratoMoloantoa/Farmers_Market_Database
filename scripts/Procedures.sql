/*SELECT * FROM Produce_listings
WHERE description is null;*/

/*SELECT product_name, category_name, harvest_date
FROM Produce_listings p
JOIN Categories c ON c.category_id = p.category_id
ORDER BY harvest_date asc;*/

--CREAT A PROCEDURE
/*CREATE PROCEDURE GetAllAvailableProducts
AS 
BEGIN
	SELECT * FROM produce_listings
	WHERE is_available = 1;
END;*/

--EXEC GetAllAvailableProducts;
--DROP PROCEDURE GetProductsByCategoryID;
/*CREATE PROCEDURE GetProductsByCategoryId 
@CategoryID INT --Parameter
AS
Begin
	SELECT produce_listings.*, category_name
	FROM Produce_listings
	JOIN Categories ON categories.category_id = produce_listings.category_id
	WHERE produce_listings.category_id = @CategoryID
END;
EXEC GetProductsByCategoryId @Categoryid = 3;*/

CREATE PROCEDURE GetProductsByFarmerID 
@FarmerID INT
AS
BEGIN
	SELECT farmer_id, product_name, price_per_kg, quantity_kg
	FROM Produce_listings
	WHERE farmer_id = @FarmerID
	ORDER BY price_per_kg asc;
END;

EXEC GetProductsByFarmerID @FarmerID = 86;