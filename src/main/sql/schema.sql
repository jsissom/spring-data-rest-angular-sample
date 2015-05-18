create table task_list(
  task_id bigserial not null,
  task_name varchar(100) not null,
  task_description text,
  task_priority varchar(20),
  task_status varchar(20),
  task_start_time timestamp not null default CURRENT_TIMESTAMP,
  task_end_time timestamp not null default CURRENT_TIMESTAMP,
  task_archived bool default false,
  primary key(task_id));

insert into task_list values(1,'Gathering Requirement','Requirement Gathering','MEDIUM','ACTIVE',current_timestamp,current_timestamp + INTERVAL '3 HOUR',false);
insert into task_list values(2,'Application Designing','Application Designing','MEDIUM','ACTIVE',current_timestamp,current_timestamp + INTERVAL '2 HOUR',false);
insert into task_list values(3,'Implementation','Implementation','MEDIUM','ACTIVE',current_timestamp,current_timestamp + INTERVAL '3 HOUR',false);
insert into task_list values(4,'Unit Testing','Unit Testing','LOW','ACTIVE',current_timestamp,current_timestamp + INTERVAL '4 HOUR',false);
insert into task_list values(5,'Maintanence','Maintanence','LOW','ACTIVE',current_timestamp,current_timestamp + INTERVAL '5 HOUR',false);
select * from task_list;
