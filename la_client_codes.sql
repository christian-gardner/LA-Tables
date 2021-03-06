ALTER TABLE LA_CLIENT_CODES
 DROP PRIMARY KEY CASCADE;

DROP TABLE LA_CLIENT_CODES CASCADE CONSTRAINTS;

CREATE TABLE LA_CLIENT_CODES
(
  ID            NUMBER,
  CLIENT_CODE   VARCHAR2(100 BYTE),
  SOURCES       VARCHAR2(200 BYTE),
  CREATED_DATE  DATE,
  CREATED_BY    VARCHAR2(50 BYTE),
  UPDATE_DATE   DATE,
  UPDATED_BY    VARCHAR2(50 BYTE),
  STATUS        VARCHAR2(10 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


--  There is no statement for index RDM.SYS_C0052642.
--  The object is created when the parent object is created.

ALTER TABLE LA_CLIENT_CODES ADD (
  PRIMARY KEY
  (ID)
  ENABLE VALIDATE);

GRANT SELECT ON LA_CLIENT_CODES TO RDM_RO;

GRANT DELETE, INSERT, SELECT, UPDATE ON LA_CLIENT_CODES TO RDM_RW;

GRANT ALTER, DELETE, INSERT, SELECT, UPDATE, ON COMMIT REFRESH, QUERY REWRITE, DEBUG, FLASHBACK ON LA_CLIENT_CODES TO TEST_RW_ROLE;
