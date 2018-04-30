-- Schedule_TimeTableItem [rel11]
alter table "public"."timetableitem"  add column  "schedule_oid"  int4;
alter table "public"."timetableitem"   add constraint fk_timetableitem_schedule foreign key ("schedule_oid") references "public"."schedule" ("oid");


