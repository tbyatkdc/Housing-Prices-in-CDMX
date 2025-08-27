-- 01_create_table.sql
-- Crear la tabla housing_cdmx
CREATE TABLE housing_cdmx (
    id SERIAL PRIMARY KEY,
    property_type VARCHAR(50),
    places VARCHAR(100),
    lat_lon VARCHAR(50),
    price NUMERIC,
    currency VARCHAR(10),
    price_aprox_local_currency NUMERIC,
    price_aprox_usd NUMERIC,
    surface_total_in_m2 NUMERIC,
    surface_covered_in_m2 NUMERIC,
    price_usd_per_m2 NUMERIC,
    price_per_m2 NUMERIC,
    lat NUMERIC(10,6),
    lon NUMERIC(10,6)
);