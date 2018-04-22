-- Group [Group]
create table "public"."group" (
   "oid"  int4  not null,
   "groupname"  varchar(255),
  primary key ("oid")
);


-- Module [Module]
create table "public"."module" (
   "oid"  int4  not null,
   "moduleid"  varchar(255),
   "modulename"  varchar(255),
  primary key ("oid")
);


-- User [User]
create table "public"."user" (
   "oid"  int4  not null,
   "username"  varchar(255),
   "password"  varchar(255),
   "email"  varchar(255),
  primary key ("oid")
);


-- Department [ent3]
create table "public"."department" (
   "oid"  int4  not null,
   "departmentname"  varchar(255),
  primary key ("oid")
);


-- MedicCenter [ent4]
create table "public"."mediccenter" (
   "oid"  int4  not null,
   "centername"  varchar(255),
  primary key ("oid")
);


-- Schedule [ent5]
create table "public"."schedule" (
   "oid"  int4  not null,
   "date"  timestamp,
   "description"  text,
  primary key ("oid")
);


-- PatientData [ent7]
create table "public"."patientdata" (
   "oid"  int4  not null,
   "cip"  varchar(255),
  primary key ("oid")
);


-- StaffData [ent8]
create table "public"."staffdata" (
   "oid"  int4  not null,
   "staffid"  varchar(255),
  primary key ("oid")
);


-- ScheduleState [ent9]
create table "public"."schedulestate" (
   "oid"  int4  not null,
   "description"  varchar(255),
  primary key ("oid")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "public"."group"  add column  "module_oid"  int4;
alter table "public"."group"   add constraint fk_group_module foreign key ("module_oid") references "public"."module" ("oid");


-- Group_Module [Group2Module_Module2Group]
create table "public"."group_module" (
   "group_oid"  int4 not null,
   "module_oid"  int4 not null,
  primary key ("group_oid", "module_oid")
);
alter table "public"."group_module"   add constraint fk_group_module_group foreign key ("group_oid") references "public"."group" ("oid");
alter table "public"."group_module"   add constraint fk_group_module_module foreign key ("module_oid") references "public"."module" ("oid");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "public"."user"  add column  "group_oid"  int4;
alter table "public"."user"   add constraint fk_user_group foreign key ("group_oid") references "public"."group" ("oid");


-- User_Group [User2Group_Group2User]
create table "public"."user_group" (
   "user_oid"  int4 not null,
   "group_oid"  int4 not null,
  primary key ("user_oid", "group_oid")
);
alter table "public"."user_group"   add constraint fk_user_group_user foreign key ("user_oid") references "public"."user" ("oid");
alter table "public"."user_group"   add constraint fk_user_group_group foreign key ("group_oid") references "public"."group" ("oid");


-- User_PatientData [rel1]
alter table "public"."patientdata"  add column  "user_oid"  int4;
alter table "public"."patientdata"   add constraint fk_patientdata_user foreign key ("user_oid") references "public"."user" ("oid");


-- Staff_Schedule [rel10]
alter table "public"."schedule"  add column  "user_oid_2"  int4;
alter table "public"."schedule"   add constraint fk_schedule_user foreign key ("user_oid_2") references "public"."user" ("oid");


-- User_User [rel2]
alter table "public"."user"  add column  "user_oid"  int4;
alter table "public"."user"   add constraint fk_user_user foreign key ("user_oid") references "public"."user" ("oid");


-- User_StaffData [rel3]
alter table "public"."staffdata"  add column  "user_oid"  int4;
alter table "public"."staffdata"   add constraint fk_staffdata_user foreign key ("user_oid") references "public"."user" ("oid");


-- Patient_Schedule [rel5]
alter table "public"."schedule"  add column  "user_oid"  int4;
alter table "public"."schedule"   add constraint fk_schedule_user_2 foreign key ("user_oid") references "public"."user" ("oid");


-- Schedule_ScheduleState [rel6]
alter table "public"."schedule"  add column  "schedulestate_oid"  int4;
alter table "public"."schedule"   add constraint fk_schedule_schedulestate foreign key ("schedulestate_oid") references "public"."schedulestate" ("oid");


-- User_Departament [rel7]
alter table "public"."staffdata"  add column  "department_oid"  int4;
alter table "public"."staffdata"   add constraint fk_staffdata_department foreign key ("department_oid") references "public"."department" ("oid");


-- MedicCenter_Department [rel8]
alter table "public"."department"  add column  "mediccenter_oid"  int4;
alter table "public"."department"   add constraint fk_department_mediccenter foreign key ("mediccenter_oid") references "public"."mediccenter" ("oid");


