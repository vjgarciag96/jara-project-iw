-- History [ent2]
alter table "public"."history"  add column  "scheduleoid"  int4;


-- Schedule_History [rel9]
alter table "public"."history"  add column  "schedule_oid"  int4;
alter table "public"."history"   add constraint fk_history_schedule foreign key ("schedule_oid") references "public"."schedule" ("oid");


