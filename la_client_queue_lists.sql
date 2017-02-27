DROP TABLE LA_CLIENT_QUEUE_LISTS CASCADE CONSTRAINTS;

CREATE TABLE LA_CLIENT_QUEUE_LISTS
(
  PID           NUMBER(10),
  HIGH_QUEUE    LA_CLIENT_QUEUE_HI_LIST GENERATED ALWAYS AS ("RDM"."LA_CLIENT_QUEUE_HI_LIST"()),
  LOW_QUEUE     LA_CLIENT_QUEUE_LOW_LIST GENERATED ALWAYS AS ("RDM"."LA_CLIENT_QUEUE_LOW_LIST"()),
  REV_QUEUE     LA_REVIEW_QUEUE GENERATED ALWAYS AS ("RDM"."LA_REVIEW_QUEUE"()),
  ADH_QUEUE     LA_ADHOCK_QUEUE GENERATED ALWAYS AS ("RDM"."LA_ADHOCK_QUEUE"()),
  HIGH_QUE_CNT  NUMBER                          DEFAULT 0,
  LOW_QUE_CNT   NUMBER                          DEFAULT 0,
  REV_QUE_CNT   NUMBER                          DEFAULT 0,
  ADH_QUE_CNT   NUMBER                          DEFAULT 0,
  APEX_ID       VARCHAR2(100 BYTE)
)
NESTED TABLE HIGH_QUEUE STORE AS LA_CLIENT_HIGH_TAB,
NESTED TABLE LOW_QUEUE STORE AS LA_CLIENT_LOW_TAB,
NESTED TABLE REV_QUEUE STORE AS LA_CLIENT_REV_TAB,
NESTED TABLE ADH_QUEUE STORE AS LA_CLIENT_ADH_TAB
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


--  There is no statement for index RDM.SYS_C0051484.
--  The object is created when the parent object is created.

--  There is no statement for index RDM.SYS_C0051485.
--  The object is created when the parent object is created.

--  There is no statement for index RDM.SYS_C0051486.
--  The object is created when the parent object is created.

--  There is no statement for index RDM.SYS_C0051487.
--  The object is created when the parent object is created.

GRANT DELETE, INSERT, SELECT, UPDATE ON LA_CLIENT_QUEUE_LISTS TO RDM_RW;
