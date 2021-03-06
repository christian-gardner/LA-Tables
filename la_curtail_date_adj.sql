ALTER TABLE LA_CURTAIL_DATE_ADJ
 DROP PRIMARY KEY CASCADE;

DROP TABLE LA_CURTAIL_DATE_ADJ CASCADE CONSTRAINTS;

CREATE TABLE LA_CURTAIL_DATE_ADJ
(
  ID            NUMBER,
  ADJUST_BY     VARCHAR2(100 BYTE),
  FIELD_VALUE   VARCHAR2(200 BYTE),
  ADJUST_STMT   VARCHAR2(200 BYTE),
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


--  There is no statement for index RDM.SYS_C0052644.
--  The object is created when the parent object is created.

ALTER TABLE LA_CURTAIL_DATE_ADJ ADD (
  PRIMARY KEY
  (ID)
  ENABLE VALIDATE);

GRANT SELECT ON LA_CURTAIL_DATE_ADJ TO RDM_RO;

GRANT DELETE, INSERT, SELECT, UPDATE ON LA_CURTAIL_DATE_ADJ TO RDM_RW;

GRANT ALTER, DELETE, INSERT, SELECT, UPDATE, ON COMMIT REFRESH, QUERY REWRITE, DEBUG, FLASHBACK ON LA_CURTAIL_DATE_ADJ TO TEST_RW_ROLE;
