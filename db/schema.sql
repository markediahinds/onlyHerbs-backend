DROP DATABASE IF EXISTS herbology_dev;
CREATE DATABASE herbology_dev;

\c herbology_dev;

CREATE TABLE herbs (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(50) NOT NULL,
    imageURL TEXT,
    family VARCHAR(50), 
    genus VARCHAR(50), 
    nutrients TEXT,
    partsUsed TEXT, 
    activeCompounds TEXT,
    medicinalUses TEXT,
    precautions TEXT,
    potencyRating NUMERIC, 
    CHECK (potencyRating >= 0 AND potencyRating <= 10),
    is_perennial BOOLEAN, 
    biosystem TEXT
);

DROP TABLE IF EXISTS biosystems;

CREATE TABLE biosystems (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    function TEXT,
    primaryOrgans TEXT,
    associatedDiseases TEXT,
    element VARCHAR(30),
    chakra VARCHAR(20), 
    has_regenerative_capacity BOOLEAN,
    averageRecoveryTime NUMERIC
);

DROP TABLE IF EXISTS nutrients;

-- CREATE TABLE nutrients (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(50) NOT NULL, 
--     benefits TEXT,
--     recommendedDailyMicrograms INT, 
--     recommendedDailyVisual TEXT,
--     solubility VARCHAR(20),
--     is_storedInBody BOOLEAN,
--     biopotency TEXT,
--     molecularWeight NUMERIC,
--     chemicalStructure TEXT,
--     meltingPoint INT,
--     boilingPoint INT,
--     is_antioxidant BOOLEAN,
--     foodSources TEXT,
--     herb_id
-- );