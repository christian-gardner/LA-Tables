ALTER TABLE LA_DISPUTE_TYPES
 DROP PRIMARY KEY CASCADE;

DROP TABLE LA_DISPUTE_TYPES CASCADE CONSTRAINTS;

CREATE TABLE LA_DISPUTE_TYPES
(
  DISPUTE_TYPE  VARCHAR2(20 BYTE),
  STATUS        VARCHAR2(10 BYTE),
  PID           NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


--  There is no statement for index RDM.SYS_C0052646.
--  The object is created when the parent object is created.

ALTER TABLE LA_DISPUTE_TYPES ADD (
  PRIMARY KEY
  (PID)
  ENABLE VALIDATE);

GRANT DELETE, INSERT, SELECT, UPDATE ON LA_DISPUTE_TYPES TO RDM_RW;
