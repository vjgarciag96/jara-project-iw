-- TimeTable [ent6]
create table "public"."timetable" (
   "oid"  int4  not null,
   "starttime"  varchar(255),
   "scheduled"  bool,
   "day"  varchar(255),
  primary key ("oid")
);


-- UserTimetable [rel12]
alter table "public"."timetable"  add column  "oid"  int4;
alter table "public"."timetable"   add constraint fk_timetable_user foreign key ("oid") references "public"."user" ("oid");


