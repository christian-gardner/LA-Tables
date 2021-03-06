ALTER TABLE LA_APPROVALS
 DROP PRIMARY KEY CASCADE;

DROP TABLE LA_APPROVALS CASCADE CONSTRAINTS;

CREATE TABLE LA_APPROVALS
(
  APPROVAL        VARCHAR2(40 BYTE),
  STATUS          VARCHAR2(10 BYTE),
  PID             NUMBER,
  SECURITY_LEVEL  NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


--  There is no statement for index RDM.SYS_C0052633.
--  The object is created when the parent object is created.

ALTER TABLE LA_APPROVALS ADD (
  PRIMARY KEY
  (PID)
  ENABLE VALIDATE);

GRANT DELETE, INSERT, SELECT, UPDATE ON LA_APPROVALS TO RDM_RW;
