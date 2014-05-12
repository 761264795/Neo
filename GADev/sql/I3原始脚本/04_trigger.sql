create or replace trigger DEL_CT_SHO_SHOPREVISEPRICE
before delete
on CT_SHO_SHOPREVISEPRICE
for each row
begin
if deleting then
insert into CT_SHO_SHOPREVISEPRICE_DEL (FID,FLASTUPDATETIME) values(:old.fid,sysdate);
end if;
end
/
create or replace trigger DEL_CT_SHO_SHOPRPMRE
before delete
on CT_SHO_SHOPRPMRE
for each row
begin
if deleting then
insert into CT_SHO_SHOPRPMRE_DEL (FID,FLASTUPDATETIME) values(:old.fid,sysdate);
end if;
end
/
-------------
create or replace trigger DEL_T_PRT_Promt
before delete
on T_PRT_Promt
for each row
begin
if deleting then
insert into T_PRT_Promt_DEL (FID,FLASTUPDATETIME) values(:old.fid,sysdate);
end if;
end
/
----------
create or replace trigger DEL_T_PRT_PromtAllBillEntry
before delete
on T_PRT_PromtAllBillEntry
for each row
begin
if deleting then
insert into T_PRT_PromtAllBillEntry_DEL (FID,FLASTUPDATETIME) values(:old.fid,sysdate);
end if;
end
/
------------
create or replace trigger DEL_T_PRT_PromtAssEntry
before delete
on T_PRT_PromtAssEntry
for each row
begin
if deleting then
insert into T_PRT_PromtAssEntry_DEL (FID,FLASTUPDATETIME) values(:old.fid,sysdate);
end if;
end
/
------------
create or replace trigger DEL_T_PRT_PromtEntry
before delete
on T_PRT_PromtEntry
for each row
begin
if deleting then
insert into T_PRT_PromtEntry_DEL (FID,FLASTUPDATETIME) values(:old.fid,sysdate);
end if;
end
/
--------------------------
create or replace trigger DEL_T_PRT_PromtNotMaterial
before delete
on T_PRT_PromtNotMaterial
for each row
begin
if deleting then
insert into T_PRT_PromtNotMaterial_DEL (FID,FLASTUPDATETIME) values(:old.fid,sysdate);
end if;
end
/
-------------------
create or replace trigger DEL_T_PRT_PROMTOTHERENTRY
before delete
on T_PRT_PROMTOTHERENTRY
for each row
begin
if deleting then
insert into T_PRT_PROMTOTHERENTRY_DEL (FID,FLASTUPDATETIME) values(:old.fid,sysdate);
end if;
end
/
-----------------------
create or replace trigger DEL_T_PRT_PromtProject
before delete
on T_PRT_PromtProject
for each row
begin
if deleting then
insert into T_PRT_PromtProject_DEL (FID,FLASTUPDATETIME) values(:old.fid,sysdate);
end if;
end

