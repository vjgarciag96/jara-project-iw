-- Timetable [ent6]
create table "public"."timetable" (
   "oid"  int4  not null,
   "starttime"  varchar(255),
   "scheduled"  bool,
   "day"  varchar(255),
  primary key ("oid")
);


-- UserTimetable [rel12]
alter table "public"."user"  add column  "timetable_oid"  int4;
alter table "public"."user"   add constraint fk_user_timetable foreign key ("timetable_oid") references "public"."timetable" ("oid");


