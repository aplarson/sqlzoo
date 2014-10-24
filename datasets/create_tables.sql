DROP TABLE bbc; 

CREATE TABLE bbc(
   name VARCHAR(50) NOT NULL,
   region VARCHAR(60),
   area DECIMAL(10),
   population DECIMAL(11),
   gdp DECIMAL(14),
   PRIMARY KEY (name)
);

DROP TABLE nobel;

CREATE TABLE nobel(
  yr INT,
  subject VARCHAR(15),
  winner VARCHAR(50)
);

DROP TABLE casting;
DROP TABLE movie;
DROP TABLE actor;

CREATE TABLE actor(
  id INTEGER NOT NULL,
  name VARCHAR(35),
  PRIMARY KEY (id)
);

CREATE INDEX actor_name ON actor(name);

CREATE TABLE movie(
  id INTEGER NOT NULL,
  title VARCHAR(70),
  yr DECIMAL(4) ,
  score FLOAT,
  votes INTEGER,
  director INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (director) REFERENCES actor(id)
);

CREATE INDEX movie_title ON movie(title);

CREATE TABLE casting (
  movieid INTEGER NOT NULL,
  actorid INTEGER NOT NULL,
  ord INTEGER,
  PRIMARY KEY (movieid, actorid),
  FOREIGN KEY (movieid) REFERENCES movie(id),
  FOREIGN KEY (actorid) REFERENCES actor(id)
);

CREATE INDEX casting_movie ON casting(movieid);
CREATE INDEX casting_actor ON casting(actorid);
CREATE INDEX casting_ord   ON casting(ord);

DROP TABLE route;
DROP TABLE stops;

CREATE TABLE stops (
  id INTEGER NOT NULL,
  name VARCHAR(30),
  PRIMARY KEY(id)
);

CREATE TABLE route (
  num VARCHAR(5) NOT NULL,
  company VARCHAR(3) NOT NULL,
  pos INTEGER NOT NULL,
  stop INTEGER,
  FOREIGN KEY(stop) REFERENCES stops(id),
  PRIMARY KEY(num,company,pos)
);
