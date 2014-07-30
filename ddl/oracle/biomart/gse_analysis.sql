--
-- Type: TABLE; Owner: BIOMART; Name: GSE_ANALYSIS
--
 CREATE TABLE "BIOMART"."GSE_ANALYSIS" 
  (	"NAME" VARCHAR2(100 BYTE), 
"PLATFORM" VARCHAR2(100 BYTE), 
"TEST" VARCHAR2(1000 BYTE), 
"DATA_CT" NUMBER, 
"FC_MEAN" NUMBER, 
"FC_STDDEV" NUMBER, 
"BIO_EXPERIMENT_ID" NUMBER(18,0), 
"BIO_ASSAY_PLATFORM_ID" NUMBER(18,0), 
"BIO_ASSAY_ANALYSIS_ID" NUMBER(18,0), 
"ANALYSIS1" VARCHAR2(300 BYTE), 
"ANALYSIS2" VARCHAR2(300 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

