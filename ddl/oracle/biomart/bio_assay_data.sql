--
-- Type: TABLE; Owner: BIOMART; Name: BIO_ASSAY_DATA
--
 CREATE TABLE "BIOMART"."BIO_ASSAY_DATA" 
  (	"BIO_SAMPLE_ID" NUMBER(18,0), 
"BIO_ASSAY_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"LOG2_VALUE" NUMBER(18,5), 
"LOG10_VALUE" NUMBER(18,5), 
"NUMERIC_VALUE" NUMBER(18,0), 
"TEXT_VALUE" VARCHAR2(200 BYTE), 
"FLOAT_VALUE" NUMBER(18,5), 
"FEATURE_GROUP_NAME" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
"BIO_EXPERIMENT_ID" NUMBER(18,0), 
"BIO_ASSAY_DATASET_ID" NUMBER(18,0), 
"BIO_ASSAY_ID" NUMBER(18,0), 
"ETL_ID" NUMBER, 
 CONSTRAINT "BIO_EXPERIMENT_DATA_FACT_PK" PRIMARY KEY ("BIO_ASSAY_DATA_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "BIOMART" ;
--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_ASY_DT_DS_FK
--
ALTER TABLE "BIOMART"."BIO_ASSAY_DATA" ADD CONSTRAINT "BIO_ASY_DT_DS_FK" FOREIGN KEY ("BIO_ASSAY_DATASET_ID")
 REFERENCES "BIOMART"."BIO_ASSAY_DATASET" ("BIO_ASSAY_DATASET_ID") ENABLE;
--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_ASSAY_DATA_ID
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_BIO_ASSAY_DATA_ID" before insert on "BIO_ASSAY_DATA"    for each row begin     if inserting then       if :NEW."BIO_ASSAY_DATA_ID" is null then          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_ASSAY_DATA_ID" from dual;       end if;    end if; end;













/
ALTER TRIGGER "BIOMART"."TRG_BIO_ASSAY_DATA_ID" ENABLE;
--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_ASY_EXP_FK
--
ALTER TABLE "BIOMART"."BIO_ASSAY_DATA" ADD CONSTRAINT "BIO_ASY_EXP_FK" FOREIGN KEY ("BIO_EXPERIMENT_ID")
 REFERENCES "BIOMART"."BIO_EXPERIMENT" ("BIO_EXPERIMENT_ID") ENABLE;
--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_EXP_DATA_FACT_SAMP_FK
--
ALTER TABLE "BIOMART"."BIO_ASSAY_DATA" ADD CONSTRAINT "BIO_EXP_DATA_FACT_SAMP_FK" FOREIGN KEY ("BIO_SAMPLE_ID")
 REFERENCES "BIOMART"."BIO_SAMPLE" ("BIO_SAMPLE_ID") ENABLE;
