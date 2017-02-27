ALTER TABLE LA_PAGES
 DROP PRIMARY KEY CASCADE;

DROP TABLE LA_PAGES CASCADE CONSTRAINTS;

CREATE TABLE LA_PAGES
(
  ID              NUMBER,
  PAGE            NUMBER,
  SECURITY_TITLE  VARCHAR2(100 BYTE),
  SECURITY_LEVEL  NUMBER                        DEFAULT 3
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


--  There is no statement for index RDM.SYS_C0052658.
--  The object is created when the parent object is created.

ALTER TABLE LA_PAGES ADD (
  PRIMARY KEY
  (ID)
  ENABLE VALIDATE);

GRANT SELECT ON LA_PAGES TO IPP$LIBRARIAN;

GRANT SELECT ON LA_PAGES TO RDM_RO;

GRANT DELETE, INSERT, SELECT, UPDATE ON LA_PAGES TO RDM_RW;
