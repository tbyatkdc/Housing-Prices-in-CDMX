--BLOQUE A:Exploración Inicial---
SELECT * FROM housing_cdmx;
--1)Número de registros de nuestra tabla
SELECT COUNT("property_type") FROM housing_cdmx;
--2)Número de valores nulos en columnas esenciales
SELECT COUNT(*) FROM housing_cdmx
WHERE lat_lon IS  NULL
   OR  price_aprox_local_currency IS NULL
   OR price_usd_per_m2 IS NULL;
--3) Listar los tipos de propiedad y cuántos hay de cada uno (property_type).   
SELECT
   property_type AS Tipo_propiedad,
   COUNT(property_type)  
FROM housing_cdmx
GROUP BY Tipo_propiedad;
--4) Top 5 alcaldías con mayor cantidad de inmuelbles
SELECT 
   places AS Alcaldia,
   COUNT(places) AS Cantidad_de_Inmuebles 
FROM housing_cdmx
GROUP BY Alcaldia
ORDER BY Cantidad_de_Inmuebles DESC
LIMIT 5;

--BLOQUE B: Limpieza de Datos---
--1) Identificación de valores negativos o iguales a cero
SELECT * FROM housing_cdmx
WHERE price <=0
  OR  price_aprox_local_currency <=0
  OR  price_aprox_usd <=0
  OR surface_total_in_m2 <=0
  OR surface_covered_in_m2 <=0
  OR price_usd_per_m2 <=0
  OR price_per_m2 <=0
--O bien
SELECT * FROM housing_cdmx
WHERE price > 0 AND price IS NOT NULL
  AND price_aprox_usd >0 AND price_aprox_usd IS NOT NULL
  
--2) Duplicados en la columna de coordenadas
SELECT
    lat_lon,
    COUNT(*) AS duplicados
FROM housing_cdmx
GROUP BY lat_lon
HAVING COUNT(*) > 1
ORDER BY duplicados DESC;


  