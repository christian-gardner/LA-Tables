ALTER TABLE LA_ASSIGNMENT_XLS
 DROP PRIMARY KEY CASCADE;

DROP TABLE LA_ASSIGNMENT_XLS CASCADE CONSTRAINTS;

CREATE TABLE LA_ASSIGNMENT_XLS
(
  COMMENTS                VARCHAR2(4000 BYTE),
  RECEIVED_DATE           VARCHAR2(30 BYTE),
  LAST_UPDATED            VARCHAR2(30 BYTE),
  CLIENT_CODE             VARCHAR2(40 BYTE),
  IM_ICLEAR_NBR           VARCHAR2(20 BYTE),
  INVOICE_NBR             VARCHAR2(20 BYTE),
  INVOICE_DATE            VARCHAR2(30 BYTE),
  WORKORDER_NBR           VARCHAR2(20 BYTE),
  LOAN_NBR                VARCHAR2(20 BYTE),
  INVOICE_AMT             VARCHAR2(30 BYTE),
  DISPUTE_AMT             VARCHAR2(30 BYTE),
  ADJUSTED_TOTAL          VARCHAR2(30 BYTE),
  CLIENT_COMMENTS         VARCHAR2(4000 BYTE),
  APPEAL                  VARCHAR2(200 BYTE),
  LOSS_ANALYST            VARCHAR2(1000 BYTE),
  WRITE_AMT               VARCHAR2(20 BYTE),
  WRITE_OFF               VARCHAR2(10 BYTE),
  WRITE_OFF_CODE          VARCHAR2(20 BYTE),
  WRITE_OFF_REASON        VARCHAR2(1000 BYTE),
  BILLING_CODE            VARCHAR2(20 BYTE),
  VENDOR_CODE             VARCHAR2(20 BYTE),
  CHARGE_BACK_AMT_1       VARCHAR2(30 BYTE),
  DISPUTE_TYPE            VARCHAR2(40 BYTE),
  SOURCE_OF_DISPUTE       VARCHAR2(200 BYTE),
  CURTAIL_DATE            VARCHAR2(30 BYTE),
  APPROVAL                VARCHAR2(200 BYTE),
  PENDING_RESEARCH        VARCHAR2(200 BYTE),
  DISPUTE_APPEAL_COMMENT  VARCHAR2(4000 BYTE),
  DEPARTMENT              VARCHAR2(50 BYTE),
  CLIENT_EMPL             VARCHAR2(100 BYTE),
  X_DISPUTED              VARCHAR2(100 BYTE),
  MONTH_DATE              VARCHAR2(20 BYTE),
  BUCKET                  VARCHAR2(200 BYTE),
  WORK_CODE               VARCHAR2(300 BYTE),
  LOAD_DATE               DATE,
  PID                     NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


--  There is no statement for index RDM.SYS_C0052639.
--  The object is created when the parent object is created.

ALTER TABLE LA_ASSIGNMENT_XLS ADD (
  PRIMARY KEY
  (PID)
  ENABLE VALIDATE);
