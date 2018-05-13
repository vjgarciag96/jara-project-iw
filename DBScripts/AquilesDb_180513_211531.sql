-- Receta [ent2]
create table "public"."receta" (
   "oid"  int4  not null,
   "medicamento"  varchar(255),
   "cantidad"  float8,
   "usos_diarios"  int4,
  primary key ("oid")
);


-- Receta_Schedule [rel4]
alter table "public"."receta"  add column  "schedule_oid"  int4;
alter table "public"."receta"   add constraint fk_receta_schedule foreign key ("schedule_oid") references "public"."schedule" ("oid");


