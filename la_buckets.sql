ALTER TABLE LA_BUCKETS
 DROP PRIMARY KEY CASCADE;

DROP TABLE LA_BUCKETS CASCADE CONSTRAINTS;

CREATE TABLE LA_BUCKETS
(
  BUCKET  VARCHAR2(40 BYTE),
  STATUS  VARCHAR2(10 BYTE),
  PID     NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


--  There is no statement for index RDM.SYS_C0052640.
--  The object is created when the parent object is created.

ALTER TABLE LA_BUCKETS ADD (
  PRIMARY KEY
  (PID)
  ENABLE VALIDATE);

GRANT DELETE, INSERT, SELECT, UPDATE ON LA_BUCKETS TO RDM_RW;
