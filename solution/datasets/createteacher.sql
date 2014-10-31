DROP TABLE teacher;
DROP TABLE dept;

CREATE TABLE dept (
  id INTEGER NOT NULL,
  name VARCHAR NOT NULL,
  PRIMARY KEY(id)
);

insert into dept values (1,'Computing');
insert into dept values (2,'Design');
insert into dept values (3,'Engineering');

CREATE TABLE teacher (
  id INTEGER NOT NULL,
  dept INTEGER,
  name VARCHAR,
  phone INTEGER,
  mobile VARCHAR,
  PRIMARY KEY(id),
  FOREIGN KEY(dept) REFERENCES dept(id)
);

CREATE INDEX teacher_dept ON teacher(dept);

insert into teacher values (101,1,'Shrivell',2753,'07966 555 1234');
insert into teacher values (102,1,'Throd',2754,'07122 555 1920');
insert into teacher values (103,1,'Splint',2293,NULL);
insert into teacher values (104,NULL,'Spiregrain',3287,NULL);
insert into teacher values (105,2,'Cutflower',3212,'07966 555 6574');
insert into teacher values (106,NULL,'Deadyawn',3345,NULL);
