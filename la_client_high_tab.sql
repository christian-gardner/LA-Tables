CREATE INDEX SYS_FK0000298052N00002$ ON LA_CLIENT_HIGH_TAB
(NESTED_TABLE_ID)
LOGGING
NOPARALLEL;


GRANT DELETE, INSERT, SELECT, UPDATE ON LA_CLIENT_HIGH_TAB TO RDM_RW;