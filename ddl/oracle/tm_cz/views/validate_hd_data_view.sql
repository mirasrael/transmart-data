--
-- Type: VIEW; Owner: TM_CZ; Name: VALIDATE_HD_DATA_VIEW
--
CREATE OR REPLACE FORCE VIEW "TM_CZ"."VALIDATE_HD_DATA_VIEW" ("LVL", "DATA_TYPE", "MESSAGE") AS 
select "LVL","DATA_TYPE","MESSAGE" from table(valid.validate_hd_data);

