ALTER TABLE LA_ASSIGNMENT
 DROP PRIMARY KEY CASCADE;

DROP TABLE LA_ASSIGNMENT CASCADE CONSTRAINTS;

CREATE TABLE LA_ASSIGNMENT
(
  INVOICE_NBR             VARCHAR2(20 BYTE),
  IM_ICLEAR_NBR           VARCHAR2(20 BYTE),
  WORKORDER_NBR           VARCHAR2(20 BYTE),
  LOAN_NBR                VARCHAR2(20 BYTE),
  CLIENT_CODE             VARCHAR2(40 BYTE),
  CLIENT_COMMENTS         VARCHAR2(4000 BYTE),
  DISPUTE_AMT             VARCHAR2(30 BYTE),
  INVOICE_AMT             VARCHAR2(30 BYTE),
  WRITE_OFF               VARCHAR2(20 BYTE),
  VENDOR_CODE             VARCHAR2(20 BYTE),
  CHARGE_BACK_AMT_1       VARCHAR2(30 BYTE),
  APPROVAL                VARCHAR2(200 BYTE),
  PENDING_RESEARCH        VARCHAR2(200 BYTE),
  APPEAL                  VARCHAR2(200 BYTE),
  DISPUTE_APPEAL_COMMENT  VARCHAR2(4000 BYTE),
  DEPARTMENT              VARCHAR2(50 BYTE),
  CLIENT_EMPL             VARCHAR2(100 BYTE),
  BUCKET                  VARCHAR2(100 BYTE),
  INVOICE_DATE            DATE,
  X_DISPUTED              VARCHAR2(100 BYTE),
  DISPUTE_TYPE            VARCHAR2(200 BYTE),
  SOURCE_OF_DISPUTE       VARCHAR2(200 BYTE),
  CURTAIL_DATE            DATE,
  LAST_UPDATED            DATE,
  COMMENTS                VARCHAR2(4000 BYTE),
  RECEIVED_DATE           DATE,
  WORK_CODE               VARCHAR2(200 BYTE),
  ADJUSTED_TOTAL          VARCHAR2(30 BYTE),
  MONTH_DATE              VARCHAR2(20 BYTE),
  LOSS_ANALYST            VARCHAR2(1000 BYTE),
  PROCESSOR_ID            NUMBER,
  QUEUE_NAME              VARCHAR2(100 BYTE),
  QUEUE_ID                NUMBER,
  DISPUTE_ID              NUMBER,
  LOAD_DATE               DATE,
  REVIEW_QUEUE            VARCHAR2(40 BYTE),
  ADHOC_INDC              VARCHAR2(200 BYTE)    DEFAULT NULL,
  REVIEWER_ID             NUMBER                DEFAULT 0,
  REVIEWER_EMAIL_ADDRESS  VARCHAR2(200 BYTE),
  FILE_ID                 NUMBER,
  LOAD_ID                 NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

COMMENT ON COLUMN LA_ASSIGNMENT.ADHOC_INDC IS 'Special assignment';



CREATE UNIQUE INDEX LA_ASSIGNMENT_PK01 ON LA_ASSIGNMENT
(DISPUTE_ID)
LOGGING
NOPARALLEL;


ALTER TABLE LA_ASSIGNMENT ADD (
  CONSTRAINT LA_ASSIGNMENT_PK01
  PRIMARY KEY
  (DISPUTE_ID)
  USING INDEX LA_ASSIGNMENT_PK01
  ENABLE VALIDATE);

GRANT DELETE, INSERT, SELECT, UPDATE ON LA_ASSIGNMENT TO RDM_RW;
