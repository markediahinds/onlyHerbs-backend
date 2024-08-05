DROP DATABASE IF EXISTS herbology_dev;
CREATE DATABASE herbology_dev;

\c herbology_dev;

CREATE TABLE biosystems (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    functionality TEXT,
    primaryOrgans TEXT,
    associatedDiseases TEXT,
    element VARCHAR(30),
    chakra VARCHAR(20), 
    has_regenerative_capacity BOOLEAN,
    averageRecoveryTime NUMERIC
);

DROP TABLE IF EXISTS herbs;

CREATE TABLE herbs (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(50) NOT NULL,
    imageURL TEXT,
    partsUsed TEXT,
    family VARCHAR(100), 
    genus VARCHAR(100), 
    nutrients TEXT,
    activeCompounds TEXT,
    medicinalUses TEXT,
    precautions TEXT,
    potencyRating NUMERIC, 
    CHECK (potencyRating >= 0 AND potencyRating <= 10),
    chakra VARCHAR(20),
    element VARCHAR(10), 
    biosystem_id INTEGER REFERENCES biosystems (id)
);

-- DROP TABLE IF EXISTS nutrients;

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
--     diseaseProtection TEXT, 
--     biosystem_id
-- );

-- DROP TABLE IF EXISTS organs;

-- DROP TABLE IF EXISTS toxins;
