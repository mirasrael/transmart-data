--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_TAXONOMY
--
 CREATE TABLE "SEARCHAPP"."SEARCH_TAXONOMY" 
  (	"TERM_ID" NUMBER(22,0) NOT NULL ENABLE, 
"TERM_NAME" VARCHAR2(900 BYTE) NOT NULL ENABLE, 
"SOURCE_CD" VARCHAR2(900 BYTE), 
"IMPORT_DATE" TIMESTAMP (1) DEFAULT Sysdate, 
"SEARCH_KEYWORD_ID" NUMBER(38,0), 
 CONSTRAINT "SEARCH_TAXONOMY_PK" PRIMARY KEY ("TERM_ID")
 USING INDEX
 TABLESPACE "TRANSMART"  ENABLE
  ) SEGMENT CREATION DEFERRED
 TABLESPACE "TRANSMART" ;

--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: FK_SEARCH_TAX_SEARCH_KEYWORD
--
ALTER TABLE "SEARCHAPP"."SEARCH_TAXONOMY" ADD CONSTRAINT "FK_SEARCH_TAX_SEARCH_KEYWORD" FOREIGN KEY ("SEARCH_KEYWORD_ID")
 REFERENCES "SEARCHAPP"."SEARCH_KEYWORD" ("SEARCH_KEYWORD_ID") ENABLE;

--
-- Type: TRIGGER; Owner: SEARCHAPP; Name: TRG_SEARCH_TAXONOMY_TERM_ID
--
  CREATE OR REPLACE TRIGGER "SEARCHAPP"."TRG_SEARCH_TAXONOMY_TERM_ID" 
  before insert on "SEARCHAPP"."SEARCH_TAXONOMY" for each row
begin
    If Inserting
      Then If :New.Term_Id Is Null
        Then Select SEQ_SEARCH_DATA_ID.nextval Into :New.Term_Id From Dual;
      End If;
    end if;
end;
/
ALTER TRIGGER "SEARCHAPP"."TRG_SEARCH_TAXONOMY_TERM_ID" ENABLE;
 
