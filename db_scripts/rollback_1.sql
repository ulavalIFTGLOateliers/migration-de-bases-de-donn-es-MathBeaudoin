ALTER TABLE musician
DROP COLUMN role;

ALTER TABLE musician
DROP COLUMN bandName;

ALTER TABLE musician
RENAME COLUMN musicianName TO singerName;

ALTER TABLE musician
RENAME TO singer;



ALTER TABLE album
DROP CONSTRAINT FK_A_singerName;

ALTER TABLE album
ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES singer(singerName);



DROP TABLE IF EXISTS band;