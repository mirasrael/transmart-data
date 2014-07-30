--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: SAMPLE_CATEGORIES
--
 CREATE TABLE "I2B2DEMODATA"."SAMPLE_CATEGORIES" 
  (	"TRIAL_CD" VARCHAR2(200 BYTE), 
"SAMPLE_ID" VARCHAR2(250 BYTE), 
"TRIAL_NAME" VARCHAR2(100 BYTE), 
"SAMPLE_CD" VARCHAR2(200 BYTE), 
"FIELD1" VARCHAR2(200 BYTE), 
"FIELD2" VARCHAR2(200 BYTE), 
"FIELD3" VARCHAR2(200 BYTE), 
"FIELD4" VARCHAR2(200 BYTE), 
"FIELD5" VARCHAR2(200 BYTE), 
"FIELD6" VARCHAR2(200 BYTE), 
"FIELD7" VARCHAR2(200 BYTE), 
"FIELD8" VARCHAR2(200 BYTE), 
"FIELD9" VARCHAR2(200 BYTE), 
"FIELD10" VARCHAR2(200 BYTE), 
"FIELD11" VARCHAR2(200 BYTE), 
"FIELD12" VARCHAR2(200 BYTE), 
"FIELD13" VARCHAR2(200 BYTE), 
"FIELD14" VARCHAR2(200 BYTE), 
"FIELD15" VARCHAR2(200 BYTE), 
"TISSUE_TYPE" VARCHAR2(2000 BYTE), 
"DATA_TYPES" VARCHAR2(2000 BYTE), 
"DISEASE" VARCHAR2(2000 BYTE), 
"TISSUE_STATE" VARCHAR2(2000 BYTE), 
"BIOBANK" VARCHAR2(3 BYTE), 
"SOURCE_ORGANISM" VARCHAR2(255 BYTE), 
"TREATMENT" VARCHAR2(255 BYTE), 
"SAMPLE_TREATMENT" VARCHAR2(2000 BYTE), 
"SUBJECT_TREATMENT" VARCHAR2(2000 BYTE), 
"TIMEPOINT" VARCHAR2(250 BYTE), 
 CHECK (BioBank in('No','Yes')) ENABLE, 
 CHECK (BioBank in('No','Yes')) ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

