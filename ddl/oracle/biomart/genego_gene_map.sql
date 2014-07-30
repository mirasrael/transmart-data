--
-- Type: TABLE; Owner: BIOMART; Name: GENEGO_GENE_MAP
--
 CREATE TABLE "BIOMART"."GENEGO_GENE_MAP" 
  (	"GENE_SYMBOL" VARCHAR2(20 BYTE), 
"GENE_ID" NVARCHAR2(10), 
"BIO_MARKER_ID" NUMBER(18,0) NOT NULL ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;

