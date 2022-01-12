create table skill (
  sk_code varchar(15),
  title varchar(30) not null,
  description varchar(150),
  level varchar(20),
  primary key (sk_code)
);


create table contract (
  contract_id varchar(15) not null,
  cus_id varchar(15) not null,
  date varchar(15),
  sal_amount numeric(7,2) check (sal_amount > 10000),
  Filepay_schedule varchar(20),
  primary key (contract_id)
);


create table factory (
  fac_id varchar(20),
  fac_name varchar(50) not null,
  address varchar(50),
  zip_code numeric(5,0),
  phone varchar(20),
  manager varchar(20),
  primary key (fac_id)
);


create table GICS (
  ind_id varchar(20),
  ind_title varchar(30) not null,
  level varchar(30),
  description varchar(150),
  parent_Id varchar(20),
  primary key (ind_id)
);


create table position (
  pos_code varchar(8),
  title varchar(30) not null,
  description varchar(150),
  pay_range_high numeric(7,2), 
  pay_range_low numeric (7,2) check (pay_range_low > 10000),
  primary key (pos_code)
);


create table supplier (
  comp_id varchar(10),
  website varchar(40),
  contact_email varchar(40),
  primary key (comp_id)


);


create table worker (
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
);


create table zip_code (
  city varchar(50),
  state varchar(20);
  primary key (city, state)
);


create table purchaseline (
  purchase_num varchar(20),
  m_code varchar(20),
  quantity varchar(10),
  primary key (purchase_num), 
  foreign key (m_code) references material, 
  foreign key (purchase_num) references purchase
);


create table company (
  comp_id varchar(15),
  street_number numeric(4,0),
  street_name varchar(50),
  apt_number int,
  zip_code numeric(5,0),
  industry_group varchar(50),
  {sub_industry} varchar(50),
  website varchar(40),
  primary key (comp_id)
);


create table material (
  m_code varchar(20),
  m_name varchar(50) not null,
  quantity varchar(10) check (quantity > 0),
  unit varchar(20),
  min_level varchar(20),
  primary key (m_code)
);


create table lineitem (
  contract_id varchar(20),
  p_code varchar(20),
  quantity varchar(10) check (quantity > 0),
  primary key (contract_id),
  foreign key (contract_id) references contract
);


create table account_recievable (
  comp_id varchar(10),
  contact_person varchar(50) not null,
  p_code varchar(20),
  avg_cost varchar(20) check (avg_cost > 100),
  primary key (comp_id), 
  foreign key (comp_id, contact_person) references customer,
  foreign key (comp_id) references company
);


create table section (
  c_code int,
  sec_no numeric(4,0) not null,
  complete_date varchar(15),
  offered_by varchar(20),
  format varchar(10),
  price numeric(6,2) check (price > 0),
  primary key(sec_code)
);


create table complete_date (
  year numeric(4,0),
  primary_key (year)
);


create table account_payable (
  sup_id varchar(20) not null,
  balance varchar(20) check (balance >=0),
  primary key (sup_id, balance)
  foreign key (sup_id) references supplier
);


create table purchase (
  purchase_num varchar(20) not null,
  sup_id varchar(20),
  sup_order_num varchar(20) not null,
  primary key (purchase_num),
  foreign key (sup_id) references supplier
    on delete set null
);


create table sup_order_num (
  book_date varchar(20) not null,
  pay_date varchar(20),
  note varchar(150),
  primary key (book_date, pay_date)
);


create table job (
  job_code varchar(20) not null,
  pos_code varchar(20) not null,
  {required_skill} varchar(20),
  pay_type varchar(20) not null,
  cate_code varchar(20),
  company varchar(20),
  primary key (job_code)
);


create table pay_type (
  emp_mode varchar(20) not null,
  pay_rate varchar(20),
  primary key (emp_mode, pay_rate)
);


create table customer (
  comp_id varchar(10),
  contact_person varchar(20) not null,
  contact_email varchar(40),
  primary key (comp_id, contact_person)
);


create table product (
  p_code varchar(20),
  p_name varchar(20) not null,
  description varchar(150),
  quantity varchar(10),
  unit varchar(20),
  avg_cost varchar(10),
  primary key (p_code)
);


create table course (
  c_code varchar(20),
  title varchar(20) not null,
  level varchar(20),
  description varchar(150),
  status varchar(20),
  retail_price numeric(6,2) check (retail_price > 150),
  primary key (c_code)
);


create table course_sec (
  sec_no numeric(4,0),
  c_code varchar(20),
  primary key (sec_no, c_code),
  foreign key (c_code) references course, 
  foreign key (c_code, sec_no) references section
);


create table prerequisite (
  c_code varchar(20) not null,
  required_code varchar(20) not null,
  primary key (c_code),
  foreign key (c_code) references course
);


create table teaches (
  c_code varchar(20),
  sk_code varchar(20),
  primary key (c_code, sk_code),
  foreign key (c_code) references section
  foreign key (sk_code) references skill
);


create table requires (
  pos_code varchar(20),
  sk_code varchar(20),
  primary key (pos_code, sk_code),
  foreign key (sk_code) references skill,
  foreign key (pos_code) references position
);


create table takes (
  per_id varchar(8), 
  c_code varchar(15),
  sec_no numeric(4,0),
  complete_date varchar(15)
  primary key (per_id, c_code, sec_no, complete_date),
  foreign key (per_id) references worker,
  foreign key (c_code, sec_no, complete_date) references section
);




create table has_skill (
  per_id varchar(8),
  sk_code varchar(20),
  primary key (per_id, sk_code),
  foreign key (per_id) references worker
  foreign key (sk_code) references skill
);


create table requires_by_job (
  job_code varchar(10)
  sk_code varchar(20),
  primary key (job_code, sk_code),
  foreign key (sk_code) references skill, 
  foreign key (job_code) references job
);


create table works (
  per_id varchar(7) not null,
  job_code varchar(10),
  start_date varchar(15) check (start_date ≤ end_date), 
  end_date varchar(15) check (end_date < today),
  primary key (per_id, job_code), 
  foreign key (per_id) references worker,
  foreign key (job_code) references job
);


create table provides (
  job_code varchar(10),
  comp_id varchar(10) not null,
  primary key (job_code, comp_id),
  foreign key (job_code) references job, 
  foreign key (comp_id) references company
);


create table industry (
  comp_id varchar(10),
  ind_id varchar(15) no null,
  primary key (ind_id, comp_id),
  foreign key (comp_id) references company,
  foreign key (ind_id) references GICS
);


create table company-factory (
  comp_id varchar(15) not null,
  fac_id varchar(15) not null,
  primary key (comp_id, fac_id),
  foreign key (fac_id) references factory,
  foreign key (comp_id) references company
);


create table needs (
  fac_id varchar(15),
  m_code varchar(20),
  primary key (fac_id, m_code),
  foreign key (fac_id) references factory,
  foreign key (m_code) references material 
);


create table provides (
  fac_id varchar(15),
  comp_id varchar(10),
  primary key (fac_id, comp_id),
  foreign key (fac_id) references factory
  foreign key (comp_id) references supplier
);


create table makes (
  fac_id varchar(15),
  p_code varchar(10),
  primary key (fac_id, p_code),
  foreign key (fac_id) references factory,
  foreign key (p_code) references product
);


create table buys (
  p_code varchar(10),
  comp_id varchar(10),
  primary key (p_code, comp_id),
  foreign key (comp_id) references customer,
  foreign key (p_code) references product
);


create table cus_contract (
  contract_id varchar(15) not null,
  comp_id varchar(10) not null,
  primary key (contract_id, comp_id),
  foreign key (contract_id) references contract,
  foreign key (comp_id) references customer
);