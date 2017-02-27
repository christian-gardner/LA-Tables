ALTER TABLE LA_APPEALS
 DROP PRIMARY KEY CASCADE;

DROP TABLE LA_APPEALS CASCADE CONSTRAINTS;

CREATE TABLE LA_APPEALS
(
  APPEAL  VARCHAR2(40 BYTE),
  STATUS  VARCHAR2(10 BYTE),
  PID     NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


--  There is no statement for index RDM.SYS_C0052635.
--  The object is created when the parent object is created.

ALTER TABLE LA_APPEALS ADD (
  PRIMARY KEY
  (PID)
  ENABLE VALIDATE);

GRANT DELETE, INSERT, SELECT, UPDATE ON LA_APPEALS TO RDM_RW;
