--
-- Type: TABLE; Owner: TM_LZ; Name: LZ_SRC_MRNA_DATA
--
 CREATE TABLE "TM_LZ"."LZ_SRC_MRNA_DATA" 
  (	"TRIAL_NAME" VARCHAR2(25 BYTE), 
"PROBESET" VARCHAR2(100 BYTE), 
"EXPR_ID" VARCHAR2(100 BYTE), 
"INTENSITY_VALUE" VARCHAR2(50 BYTE), 
"SOURCE_CD" VARCHAR2(200 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

