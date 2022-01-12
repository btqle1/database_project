/* create table sales (
  invoice_num varchar(15),
  date varchar(15),
  item_num varchar(12) not null,
  quantity int,
  price numeric(7,2) check (price > 100),
  note varchar(100),
  primary key (invoice_num),
  foreign key (item_num) references inventory
); */

/* create table store (
  store_id varchar(8) not null,
  address varchar(100),
  zip_code numeric(5,0),
  phone varchar(15),
  balance numeric(8,2) check (balance > 0),
  primary key (store_id)
); */

/* create table account_recievable (
  cus_id varchar(10),
  invoice_num varchar(15) not null,
  balance numeric(7,2) check (balance >= 0),
  primary key (cus_id, invoice_num),
  foreign key (cus_id) references customer,
  foreign key (invoice_num) references sales
); */

/* create table section (
  c_code varchar(15),
  sec_no numeric(4,0) not null,
  complete_date varchar(15),
  offered_by varchar(20),
  format varchar(10),
  price numeric(7,2),
  primary key (sec_no)
); */
insert into section values ('8048', '54817', 'complete_date1', 'offered_by1', 'format1', '4300' );
insert into section values ('3177', '11525', 'complete_date2', 'offered_by2', 'format2', '600' );
insert into section values ('3206', '55269', 'complete_date3', 'offered_by3', 'format3', '3200' );
insert into section values ('6918', '72103', 'complete_date4', 'offered_by4', 'format4', '4200' );
insert into section values ('6654', '41055', 'complete_date5', 'offered_by5', 'format5', '2500' );

/* create table complete_date (
  year numeric(4,0) not null,
  primary_key (year)
); */
insert into complete_date values ('2019');
insert into complete_date values ('2019');
insert into complete_date values ('2019');
insert into complete_date values ('2020');
insert into complete_date values ('2020');

/* create table course (
  c_code varchar(10),
  title varchar(50) not null,
  level varchar(15),
  description varchar(150),
  status varchar(30),
  retail_price numeric(6,2) check (retail_price > ),
  primary key (c_code, sec_no)
); */
insert into course values ('8048', 'title1', 'level1', 'description1', 'status1', '4500.00' );
insert into course values ('3177', 'title2', 'level2', 'description2', 'status2', '1000.00' );
insert into course values ('3206', 'title3', 'level3', 'description3', 'status3', '3500.00' );
insert into course values ('6918', 'title4', 'level4', 'description4', 'status4', '4500.00' );
insert into course values ('6654', 'title5', 'level5', 'description5', 'status5', '2500.00' );

/* create table company (
  comp_id varchar(15) not null,
  street_number numeric(4,0),
  street_name varchar(50),
  apt_number int,
  zip_code numeric(5,0),
  industry_group varchar(50),
  {sub_industry} varchar(50),
  website varchar(40),
  primary key (comp_id)
); */


/* create table skill (
  sk_code varchar(10),,
  title varchar(30) not null,
  description (150),
  level varchar(20),
  primary key (sk_code)
); */
insert into skill values ('8854', 'sk.title1', 'sk.description1', 'sk.level1');
insert into skill values ('7943', 'sk.title2', 'sk.description2', 'sk.level2');
insert into skill values ('6781', 'sk.title3', 'sk.description3', 'sk.level3');
insert into skill values ('7496', 'sk.title4', 'sk.description4', 'sk.level4');
insert into skill values ('2358', 'sk.title5', 'sk.description5', 'sk.level5');

/* create table customer (
  cus_id varchar(10),
  name varchar(20) not null,
  address varchar(100),
  zip_code numeric(5,0),
  phone varchar(15),
  primary key (cus_id)
); */

/* create table worker (
  per_id varchar(10),
  name varchar(20) not null,
  sec_no numeric(4,0) not null,
  street_number numeric(4,0),
  street_name varchar(50),
  apt_number int,
  zip_code numeric(5,0),
  email varchar(30),
  gender varchar(6),
  {phone} varchar(15),
  primary key (per_id)
); */

/* create table zip_code (
  city varchar(50),
  state varchar(20);
  primary key (city, state)
); */

/* create table purchasepaymentrecord (
  sup_id varchar(11) not null,
  pur_num varchar(12) not null,
  date varchar(15),
  amount numeric(7,0) check (amount > 0),
  trans_type varchar(8) not null,
  primary key (sup_id, pur_num),
  foreign key (pur_num) references purchase,
  foreign key (sup_id) references supplier
); */

/* create table inventory (
  item_num varchar(12) not null,
  unit varchar(20),
  min_leval varchar(20),
  shelf_code varchar(12),
  primary key (item_num)
); */

/* create table shelf_code(
  sh_title varchar(20) not null,
  primary key (sh_title)
); */

/* create table unit(
  avg_cost numeric(6,0) check (avg_cost > 0),
  old_date varchar(15),
  title varchar(20) not null,
  quantity int check(quantity > 0),
  description varchar(150);
  primary key (avg_cost, old_date)
); */

/* create table job (
  job_code varchar(10) not null,
  pos_code varchar(8),
  {required_skill} varchar(30),
  pay_type varchar(15) not null,
  cate_code varchar(12),
  company varchar(30),
  primary key (job_code)
); */

/* create table pay_type(
  pay_rate varchar(20) check (pay_rate > 0),
  emp_mode varchar(20) not null,
  primary key (pay_rate, emp_mode)
); */
insert into pay_type values ('12.50', 'emp_mode');
insert into pay_type values ('13.50', 'emp_mode');
insert into pay_type values ('20.00', 'emp_mode');
insert into pay_type values ('17.50', 'emp_mode');
insert into pay_type values ('25.00', 'emp_mode');

/* create table position (
  pos_code varchar(8) not null,
  title varchar(30),
  description varchar(150),
  pay_range_high numeric(7,2) check (pay_rate_high > 95000),
  pay_range_low numeric (6,2) check (pay_rate_low > 14000),
  primary key (pos_code)
); */

/* create table GICS (
  ind_id varchar(20),
  ind_title varchar(30) not null,
  level varchar(30),
  description varchar(150),
  parent_Id varchar(20),
  primary key (ind_id)
); */

/* create table account_payable (
  sup_id varchar(8),
  store_id varchar(8),
  balance numeric(8,2) check (balance >= 0),
  primary key (sup_id, store_id),
  foreign key (sup_id) references supplier,
  foreign key (store_id) references store
); */

/* create table purchase (
  pur_num varchar(15) not null,
  date varchar(15),
  item_num varchar(12) not null,
  quantity int check (quantity > 0),
  note varchar(150),
  primary key (pur_num),
  foreign key (item_num) references inventory,
  foreign key (pur_num) references purchasepaymentrecord
); */

/* create table item_num(
  unit_cost numeric(7,2) check (unit_cost > 100) not null,
  primary key (unit_cost)
); */

/* create table supplier (
  sup_id varchar(8) not null,
  address varchar(100),
  zip_code numeric(5,0),
  phone varchar(15),
  primary key (sup_id)
); */

/* create table course_sec (
  c_code varchar(15),
  sec_no numeric(4,0),
  primary key(c_code, sec_no),
  foreign key(c_code) references course,
  foreign key(c_code, sec_no) references section
); */
insert into course_sec values ('54817', '8048', 'complete_date');
insert into course_sec values ('11525', '3177', 'complete_date');
insert into course_sec values ('55269', '3206', 'complete_date');
insert into course_sec values ('72103', '6918', 'complete_date');
insert into course_sec values ('41055', '6654', 'complete_date');

/* create table prerequisite (
  c_code varchar(15) not null,
  required_code varchar(15) not null,
  primary key (c_code, required_code),
  foreign key (c_code) references course
); */
insert into prerequisite values ('8048');
insert into prerequisite values ('3177');
insert into prerequisite values ('3206');
insert into prerequisite values ('6918');
insert into prerequisite values ('6654');

/* create table teaches (
  c_code varchar(15),
  sk_code varchar(15),
  primary key (c_code, sk_code)
  foreign key (c_code) references section, 
  foreign key (sk_code) references skill
); */
insert into teaches values ('8048', '8854');
insert into teaches values ('3177', '7943');
insert into teaches values ('3206', '6781');
insert into teaches values ('6918', '7496');
insert into teaches values ('6654', '2358');

/* create table requires (
  pos_code varchar(15),
  sk_code varchar(15),
  primary key (pos_code, sk_code)
  foreign key (pos_code) references position,
  foreign key (sk_code) references skill
); */
insert into requires values ('8854', 'pos_code');
insert into requires values ('7943', 'pos_code');
insert into requires values ('6781', 'pos_code');
insert into requires values ('7496', 'pos_code');
insert into requires values ('2358', 'pos_code');

/* create table takes (
  per_id varchar(8),
  c_code varchar(15),
  sec_no numeric(4,0),
  complete_date charchar(15),
  primary key (per_id, c_code, sec_no, complete_date),
  foreign key (c_code, sec_no, complete_date) references section,
  foreign key (per_id) references worker
); */
insert into takes values ('8048', '54817', 'complete_date');
insert into takes values ('3177', '11525', 'complete_date');
insert into takes values ('3206', '55269', 'complete_date');
insert into takes values ('6918', '72103', 'complete_date');
insert into takes values ('6654', '41055', 'complete_date');

/* create table has_skill (
  per_id varchar(8),
  sk_code varchar(15),
  primary key (per_id, sk_code),
  foreign key (per_id) references worker,
  foreign key (sk_code) references skill
); */
insert into has_skill values ('8854', '6611825');
insert into has_skill values ('7943', '4716762');
insert into has_skill values ('6781', '6258167');
insert into has_skill values ('7496', '8829511');
insert into has_skill values ('2358', '4271688');

/* create table requires_by_job (
  job_code varchar(10),
  sk_code varchar(15),
  primary key (job_code, sk_code),
  foreign key (job_code) references job,
  foreign key (sk_code) references skill
); */
insert into requires_by_job values ('8854', '98094');
insert into requires_by_job values ('7943', '29796');
insert into requires_by_job values ('6781', '11889');
insert into requires_by_job values ('7496', '66442');
insert into requires_by_job values ('2358', '10332');

/* create table works (
  per_id varchar(7),
  job_code varchar(10) not null,
  start_date varchar(15) check (start_date ≤ end_date), 
  end_date varchar(15) check (end_date < today),
  primary key (per_id, job_code)
  foreign key (job_code) references job,
  foreign key (per_id) references worker
); */
insert into works values ('6611825', '02012020', '05012020', '98094');
insert into works values ('4716762', '03012019', NULL, '29796');
insert into works values ('6258167', '04012018', '02012019', '11889');
insert into works values ('8829511', '01012017', '04012020', '66442');
insert into works values ('4271688', '01012016', NULL, '10332');

/* create table provides (
  job_code varchar(10),
  comp_id varchar(10),
  primary key(job_code, comp_id),
  foreign key (job_code) references job,
  foreign key (comp_id) references company
); */
insert into provides values ('98094', '72597');
insert into provides values ('29796', '45539');
insert into provides values ('11889', '40356');
insert into provides values ('66442', '78030');
insert into provides values ('10332', '65207');

/* create table company-store (
  comp_id varchar(10),
  store_id varchar(7),
  primary key (comp_id, store_id),
  foreign key (comp_id) references company,
  foreign key (store_id) references store
); */

/* create table industry (
  ind_id varchar(15),
  comp_id varchar(10),
  primary key (ind_id, comp_id),
  foreign key (ind_id) references GICS,
  foreign key (comp_id) references company
); */
insert into industry values ('1111', '72597');
insert into industry values ('2222', '45539');
insert into industry values ('3333', '40356');
insert into industry values ('4444', '78030');
insert into industry values ('5555', '65207');

/* create table pays (
  job_code varchar(10),
  store_id varchar(7),
  primary key (job_code, store_id),
  foreign key (store_id) references store,
  foreign key (job_code) references job
); */


/* create table stocks (
  store_id varchar(7),
  item_num varchar(10) not null,
  primary key (store_id)
  foreign key (item_num) references inventory, 
  foreign key (store_id) references store
); */