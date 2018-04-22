-- History [ent2]
create table "public"."history" (
   "oid"  int4  not null,
   "title"  varchar(255),
   "description"  varchar(255),
   "details"  text,
  primary key ("oid")
);


-- User_History [rel4]
alter table "public"."history"  add column  "user_oid"  int4;
alter table "public"."history"   add constraint fk_history_user foreign key ("user_oid") references "public"."user" ("oid");


