-- TimeTableItem [ent10]
create table "public"."timetableitem" (
   "oid"  int4  not null,
   "starttime"  varchar(255),
   "scheduled"  bool,
   "day"  varchar(255),
  primary key ("oid")
);


-- User_TimeTableItem [rel13]
alter table "public"."timetableitem"  add column  "user_oid"  int4;
alter table "public"."timetableitem"   add constraint fk_timetableitem_user foreign key ("user_oid") references "public"."user" ("oid");


