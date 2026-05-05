/*CREATE VIEW VerifiedFarmers
AS 
SELECT * FROM Farmers WHERE is_verified = 1;

SELECT * FROM VerifiedFarmers;
*/

CREATE VIEW TopRatedFarmer
AS
SELECT * FROM Farmers 
WHERE rating >= 4.0 
;

SELECT * FROM TopRatedFarmer
ORDER BY rating DESC, farm_name ASC;