--
-- Type: TABLE; Owner: TM_CZ; Name: CZ_TEST
--
 CREATE TABLE "TM_CZ"."CZ_TEST" 
  (	"TEST_ID" NUMBER(18,0) NOT NULL ENABLE, 
"TEST_NAME" NVARCHAR2(200), 
"TEST_DESC" NVARCHAR2(1000), 
"TEST_SCHEMA" NVARCHAR2(255), 
"TEST_TABLE" NVARCHAR2(255), 
"TEST_COLUMN" NVARCHAR2(255), 
"TEST_TYPE" NVARCHAR2(255), 
"TEST_SQL" NVARCHAR2(2000), 
"TEST_PARAM1" NVARCHAR2(2000), 
"TEST_PARAM2" NVARCHAR2(2000), 
"TEST_PARAM3" NVARCHAR2(2000), 
"TEST_MIN_VALUE" NUMBER(18,4), 
"TEST_MAX_VALUE" NUMBER(18,4), 
"TEST_CATEGORY_ID" NUMBER, 
"TEST_SEVERITY_CD" NVARCHAR2(20), 
 CONSTRAINT "CZ_TEST_PK" PRIMARY KEY ("TEST_ID")
 USING INDEX
 TABLESPACE "TRANSMART"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;
--
-- Type: TRIGGER; Owner: TM_CZ; Name: TRG_CZ_TEST_ID
--
  CREATE OR REPLACE TRIGGER "TM_CZ"."TRG_CZ_TEST_ID" 
before insert on "CZ_TEST"    for each row
begin     if inserting then
if :NEW."TEST_ID" is null then
select SEQ_CZ.nextval into :NEW."TEST_ID" from dual;       end if;       end if;   end;

/
ALTER TRIGGER "TM_CZ"."TRG_CZ_TEST_ID" ENABLE;
--
-- Type: REF_CONSTRAINT; Owner: TM_CZ; Name: CZ_TEST_CZ_TEST_CATEGORY_FK1
--
ALTER TABLE "TM_CZ"."CZ_TEST" ADD CONSTRAINT "CZ_TEST_CZ_TEST_CATEGORY_FK1" FOREIGN KEY ("TEST_CATEGORY_ID")
 REFERENCES "TM_CZ"."CZ_TEST_CATEGORY" ("TEST_CATEGORY_ID") ENABLE;
