/* create table skill (
  sk_code varchar(15),
  title varchar(30) not null,
  description varchar(150),
  level varchar(20),
  primary key (sk_code)
); */
insert into skill values ('8854', 'sk.title1', 'sk.description1', 'sk.level1');
insert into skill values ('7943', 'sk.title2', 'sk.description2', 'sk.level2');
insert into skill values ('6781', 'sk.title3', 'sk.description3', 'sk.level3');
insert into skill values ('7496', 'sk.title4', 'sk.description4', 'sk.level4');
insert into skill values ('2358', 'sk.title5', 'sk.description5', 'sk.level5');

/* create table contract (
  contract_id varchar(15) not null,
  cus_id varchar(15) not null,
  date varchar(15),
  sal_amount numeric(7,2) check (sal_amount > 10000),
  Filepay_schedule varchar(20),
  primary key (contract_id)
); */
insert into contract values ('1111', '101010', '01012020', '20000.00', '11111');

/* create table factory (
  fac_id varchar(20),
  fac_name varchar(50) not null,
  address varchar(50),
  zip_code numeric(5,0),
  phone varchar(20),
  manager varchar(20),
  primary key (fac_id)
); */
insert into factory values ('1000', 'factory_name1', 'address1', '12345', '1234567890', 'manager1');

/* create table GICS (
  ind_id varchar(20),
  ind_title varchar(30) not null,
  level varchar(30),
  description varchar(150),
  parent_Id varchar(20),
  primary key (ind_id)
); */
insert into GICS values ('1111', 'ind_title', 'level', 'description', 'parent_id');
insert into GICS values ('2222', 'ind_title', 'level', 'description', 'parent_id');
insert into GICS values ('3333', 'ind_title', 'level', 'description', 'parent_id');
insert into GICS values ('4444', 'ind_title', 'level', 'description', 'parent_id');
insert into GICS values ('5555', 'ind_title', 'level', 'description', 'parent_id');

/* create table position (
  pos_code varchar(8),
  title varchar(30) not null,
  description varchar(150),
  pay_range_high numeric(8,2) check (pay_range_high > 70000), 
  pay_range_low numeric (6,2) check (pay_range_low > 10000),
  primary key (pos_code)
); */
insert into position values ('229', 'title1', 'description', '67000.00', '45000.00');
insert into position values ('245', 'title2', 'description', '90000.00', '70000.00');
insert into position values ('998', 'title3', 'description', '85000.00', '60000.00');
insert into position values ('437', 'title4', 'description', '55000.00', '45000.00');
insert into position values ('653', 'title5', 'description', '60000.00', '50000.00');

/* create table supplier (
  comp_id varchar(10),
  website varchar(40),
  contact_email varchar(40),
  primary key (comp_id)

); */
insert into supplier values ('4444', 'website1', 'email1');

/* create table worker (
  per_id varchar(20),
  name varchar(20) not null,
  sec_no numeric(4,0),
  street_number numeric(4,0),
  street_name varchar(50),
  apt_number int,
  zip_code numeric(5,0),
  email varchar(50),
  gender varchar(20),
  {phone} varchar(20),
  primary key (per_id)
); */
insert into person values ('6611825', 'Mekhi Butler', '7968', 'Fox Lane', '1', '75649', 'email1', 'M', '3974053412');
insert into person values ('4716762', 'Diya Bryant', '8289', 'Park Place', '2', '26308', 'email2', 'F', '9636515433');
insert into person values ('6258167', 'Jess Bond', '2529', 'Greenfield Road', '3', '68553', 'email3', 'F', '8861198423');
insert into person values ('8829511', 'Belle Mackie', '9670', 'Oxford Street', '4', '82821', 'email4', 'F', '9854065748');
insert into person values ('4271688', 'Christian Bolton', '3290', 'Eastfield Road', '5', '97503', 'email5', 'M', '2019013651');
insert into person values ('9000992', 'Ifan Oakley', '2494', 'Market Street', '6', '42132', 'email6', 'M', '8947798723');
insert into person values ('6184363', 'Austin Mcneill', '9155', 'Primrose Hill', '7', '26177', 'email7', 'M', '5039598755');
insert into person values ('8482412', 'Sharon Foster', '7977', 'Richmond Road', '8', '88499', 'email8', 'F', '2523665478');
insert into person values ('8486878', 'Keaton Hamilton', '8501', 'Ferry Lane', '9', '48203', 'email9', 'M', '2145965132');
insert into person values ('5724098', 'Eleanor Read', '6890', 'New Lane', '10', '33298', 'email10', 'F', '9247298756');


/* create table zip_code (
  city varchar(50),
  state varchar(20);
  primary key (city, state)
); */
insert into zip_code values ('Santa Ana', 'California');
insert into zip_code values ('Buffalo', 'New York');
insert into zip_code values ('Cleveland', 'Ohio');
insert into zip_code values ('Scottsdale', 'Arizona');
insert into zip_code values ('Arlington', 'Texas');
insert into zip_code values ('Aurora', 'Colorado');
insert into zip_code values ('San Diego', 'California');
insert into zip_code values ('Anaheim', 'California');
insert into zip_code values ('Lubbock', 'Texas');
insert into zip_code values ('Lexington', 'Kentucky');

/* create table purchaseline (
  purchase_num varchar(20),
  m_code varchar(20),
  quantity varchar(10),
  primary key (purchase_num), 
  foreign key (m_code) references material, 
  foreign key (purchase_num) references purchase
);*/
insert into purchaseline values ('123456', '12345', '10');

/* create table company (
  comp_id varchar(15),
  street_number numeric(4,0),
  street_name varchar(50),
  apt_number int,
  zip_code numeric(5,0),
  industry_group varchar(50),
  {sub_industry} varchar(50),
  website varchar(40),
  primary key (comp_id)
); */
insert into company values ('72597', '5646', 'street_name1', '1', '51541', 'industry_group1', 'sub_industry1', 'website1');
insert into company values ('45539', '9898', 'street_name2', '2', '48615', 'industry_group2', 'sub_industry2', 'website2');
insert into company values ('40356', '3211', 'street_name3', '3', '98756', 'industry_group3', 'sub_industry3', 'website3');
insert into company values ('78030', '8745', 'street_name4', '4', '15498', 'industry_group4', 'sub_industry4', 'website4');
insert into company values ('65207', '5687', 'street_name5', '5', '89745', 'industry_group5', 'sub_industry5', 'website5');

/* create table material (
  m_code varchar(20),
  m_name varchar(50) not null,
  quantity varchar(10) check (quantity > 0),
  unit varchar(20),
  min_level varchar(20),
  primary key (m_code)
); */
insert into material values ('12345', 'm_name1' , '10' , 'unit1', '10');

/* create table lineitem (
  contract_id varchar(20),
  p_code varchar(20),
  quantity varchar(10) check (quantity > 0),
  primary key (contract_id),
  foreign key (contract_id) references contract
); */

/* create table account_recievable (
  comp_id varchar(10),
  contact_person varchar(50) not null,
  p_code varchar(20),
  avg_cost varchar(20) check (avg_cost > 100),
  primary key (comp_id), 
  foreign key (comp_id, contact_person) references customer,
  foreign key (comp_id) references company
); */

/* create table section (
  c_code int,
  sec_no numeric(4,0) not null,
  complete_date varchar(15),
  offered_by varchar(20),
  format varchar(10),
  price numeric(6,2) check (price > 0),
  primary key(sec_code)
); */
insert into section values ('8048', '54817', 'complete_date1', 'offered_by1', 'format1', '4300' );
insert into section values ('3177', '11525', 'complete_date2', 'offered_by2', 'format2', '600' );
insert into section values ('3206', '55269', 'complete_date3', 'offered_by3', 'format3', '3200' );
insert into section values ('6918', '72103', 'complete_date4', 'offered_by4', 'format4', '4200' );
insert into section values ('6654', '41055', 'complete_date5', 'offered_by5', 'format5', '2500' );

/* create table complete_date (
  year numeric(4,0),
  primary_key (year)
); */
insert into complete_date values ('2019');
insert into complete_date values ('2019');
insert into complete_date values ('2019');
insert into complete_date values ('2020');
insert into complete_date values ('2020');

/* create table account_payable (
  sup_id varchar(20) not null,
  balance varchar(20) check (balance >=0),
  primary key (sup_id, balance)
  foreign key (sup_id) references supplier
); */

/* create table purchase (
  purchase_num varchar(20) not null,
  sup_id varchar(20),
  sup_order_num varchar(20) not null,
  primary key (purchase_num),
  foreign key (sup_id) references supplier
    on delete set null
); */

/* create table sup_order_num (
  book_date varchar(20) not null,
  pay_date varchar(20),
  note varchar(150),
  primary key (book_date, pay_date)
); */

/* create table job (
  job_code varchar(20) not null,
  pos_code varchar(20) not null,
  {required_skill} varchar(20),
  pay_type varchar(20) not null,
  cate_code varchar(20),
  company varchar(20),
  primary key (job_code)
); */
insert into job values ('98094', '229', 'required_skill1', 'pay_type1', '258', 'company1');
insert into job values ('29796', '245', 'required_skill2', 'pay_type1', '839', 'company2');
insert into job values ('11889', '998', 'required_skill3', 'pay_type1', '339', 'company3');
insert into job values ('66442', '437', 'required_skill4', 'pay_type2', '335', 'company4');
insert into job values ('10332', '653', 'required_skill5', 'pay_type2', '771', 'company5');

/* create table pay_type (
  emp_mode varchar(20) not null,
  pay_rate varchar(20),
  primary key (emp_mode, pay_rate)
); */
insert into pay_type values ('12.50', 'emp_mode');
insert into pay_type values ('13.50', 'emp_mode');
insert into pay_type values ('20.00', 'emp_mode');
insert into pay_type values ('17.50', 'emp_mode');
insert into pay_type values ('25.00', 'emp_mode');

/* create table customer (
  comp_id varchar(10),
  contact_person varchar(20) not null,
  contact_email varchar(40),
  primary key (comp_id, contact_person)
); */

/* create table product (
  p_code varchar(20),
  p_name varchar(20) not null,
  description varchar(150),
  quantity varchar(10),
  unit varchar(20),
  avg_cost varchar(10),
  primary key (p_code)
); */

/* create table course (
  c_code varchar(20),
  title varchar(20) not null,
  level varchar(20),
  description varchar(150),
  status varchar(20),
  retail_price numeric(6,2) check (retail_price > 150),
  primary key (c_code)
); */
insert into course values ('8048', 'title1', 'level1', 'description1', 'status1', '4500.00' );
insert into course values ('3177', 'title2', 'level2', 'description2', 'status2', '1000.00' );
insert into course values ('3206', 'title3', 'level3', 'description3', 'status3', '3500.00' );
insert into course values ('6918', 'title4', 'level4', 'description4', 'status4', '4500.00' );
insert into course values ('6654', 'title5', 'level5', 'description5', 'status5', '2500.00' );

/* create table course_sec (
  sec_no numeric(4,0),
  c_code varchar(20),
  primary key (sec_no, c_code),
  foreign key (c_code) references course, 
  foreign key (c_code, sec_no) references section
); */
insert into course_sec values ('54817', '8048', 'complete_date');
insert into course_sec values ('11525', '3177', 'complete_date');
insert into course_sec values ('55269', '3206', 'complete_date');
insert into course_sec values ('72103', '6918', 'complete_date');
insert into course_sec values ('41055', '6654', 'complete_date');

/* create table prerequisite (
  c_code varchar(20) not null,
  required_code varchar(20) not null,
  primary key (c_code),
  foreign key (c_code) references course
); */
insert into prerequisite values ('8048');
insert into prerequisite values ('3177');
insert into prerequisite values ('3206');
insert into prerequisite values ('6918');
insert into prerequisite values ('6654');

/* create table teaches (
  c_code varchar(20),
  sk_code varchar(20),
  primary key (c_code, sk_code),
  foreign key (c_code) references section
  foreign key (sk_code) references skill
); */
insert into teaches values ('8048', '8854');
insert into teaches values ('3177', '7943');
insert into teaches values ('3206', '6781');
insert into teaches values ('6918', '7496');
insert into teaches values ('6654', '2358');

/* create table requires (
  pos_code varchar(20),
  sk_code varchar(20),
  primary key (pos_code, sk_code),
  foreign key (sk_code) references skill,
  foreign key (pos_code) references position
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
  complete_date varchar(15)
  primary key (per_id, c_code, sec_no, complete_date),
  foreign key (per_id) references worker,
  foreign key (c_code, sec_no, complete_date) references section
); */
insert into takes values ('8048', '54817', 'complete_date');
insert into takes values ('3177', '11525', 'complete_date');
insert into takes values ('3206', '55269', 'complete_date');
insert into takes values ('6918', '72103', 'complete_date');
insert into takes values ('6654', '41055', 'complete_date');


/* create table has_skill (
  per_id varchar(8),
  sk_code varchar(20),
  primary key (per_id, sk_code),
  foreign key (per_id) references worker
  foreign key (sk_code) references skill
); */
insert into has_skill values ('8854', '6611825');
insert into has_skill values ('7943', '4716762');
insert into has_skill values ('6781', '6258167');
insert into has_skill values ('7496', '8829511');
insert into has_skill values ('2358', '4271688');

/* create table requires_by_job (
  job_code varchar(10)
  sk_code varchar(20),
  primary key (job_code, sk_code),
  foreign key (sk_code) references skill, 
  foreign key (job_code) references job
); */
insert into requires_by_job values ('8854', '98094');
insert into requires_by_job values ('7943', '29796');
insert into requires_by_job values ('6781', '11889');
insert into requires_by_job values ('7496', '66442');
insert into requires_by_job values ('2358', '10332');

/* create table works (
  per_id varchar(7) not null,
  job_code varchar(10),
  start_date varchar(15) check (start_date ≤ end_date), 
  end_date varchar(15) check (end_date < today),
  primary key (per_id, job_code), 
  foreign key (per_id) references worker,
  foreign key (job_code) references job
); */
insert into works values ('6611825', '02012020', '05012020', '98094');
insert into works values ('4716762', '03012019', NULL, '29796');
insert into works values ('6258167', '04012018', '02012019', '11889');
insert into works values ('8829511', '01012017', '04012020', '66442');
insert into works values ('4271688', '01012016', NULL, '10332');

/* create table provides (
  job_code varchar(10),
  comp_id varchar(10) not null,
  primary key (job_code, comp_id),
  foreign key (job_code) references job, 
  foreign key (comp_id) references company
); */
insert into provides values ('98094', '72597');
insert into provides values ('29796', '45539');
insert into provides values ('11889', '40356');
insert into provides values ('66442', '78030');
insert into provides values ('10332', '65207');

/* create table industry (
  comp_id varchar(10),
  ind_id varchar(15) no null,
  primary key (ind_id, comp_id),
  foreign key (comp_id) references company,
  foreign key (ind_id) references GICS
); */
insert into industry values ('1111', '72597');
insert into industry values ('2222', '45539');
insert into industry values ('3333', '40356');
insert into industry values ('4444', '78030');
insert into industry values ('5555', '65207');

/* create table company-factory (
  comp_id varchar(15) not null,
  fac_id varchar(15) not null,
  primary key (comp_id, fac_id),
  foreign key (fac_id) references factory,
  foreign key (comp_id) references company
); */

/* create table needs (
  fac_id varchar(15),
  m_code varchar(20),
  primary key (fac_id, m_code),
  foreign key (fac_id) references factory,
  foreign key (m_code) references material 
); */

/* create table provides (
  fac_id varchar(15),
  comp_id varchar(10),
  primary key (fac_id, comp_id),
  foreign key (fac_id) references factory
  foreign key (comp_id) references supplier
); */

/* create table makes (
  fac_id varchar(15),
  p_code varchar(10),
  primary key (fac_id, p_code),
  foreign key (fac_id) references factory,
  foreign key (p_code) references product
); */

/* create table buys (
  p_code varchar(10),
  comp_id varchar(10),
  primary key (p_code, comp_id),
  foreign key (comp_id) references customer,
  foreign key (p_code) references product
); */

/* create table cus_contract (
  contract_id varchar(15) not null,
  comp_id varchar(10) not null,
  primary key (contract_id, comp_id),
  foreign key (contract_id) references contract,
  foreign key (comp_id) references customer
); */
