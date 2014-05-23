--
-- Type: TABLE; Owner: TM_LZ; Name: LT_SRC_DATA_METADATA
--
 CREATE TABLE "TM_LZ"."LT_SRC_DATA_METADATA" 
  (	"TAG_PATH" VARCHAR2(2000 BYTE), 
"TAG_TYPE" VARCHAR2(200 BYTE), 
"TAG_NAME" VARCHAR2(200 BYTE), 
"TAGS_IDX" NUMBER(*,0)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;
