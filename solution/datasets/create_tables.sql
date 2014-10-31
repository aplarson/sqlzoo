DROP TABLE world;

CREATE TABLE world(
   name VARCHAR NOT NULL,
   continent VARCHAR,
   area INTEGER DEFAULT NULL,
   population INTEGER DEFAULT NULL,
   gdp INTEGER DEFAULT NULL,
   PRIMARY KEY (name)
);

COPY world FROM '/Users/rglassett/appacademy/sqlzoo/solution/datasets/tabworld.txt';
