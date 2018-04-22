-- User_Schedule [rel10]
alter table "public"."schedule"  add column  "user_oid_2"  int4;
alter table "public"."schedule"   add constraint fk_schedule_user_2 foreign key ("user_oid_2") references "public"."user" ("oid");


