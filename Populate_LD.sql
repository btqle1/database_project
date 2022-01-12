/* section = (c_code, sec_no, complete_date, offered_by, format, price) */
insert into section values ('8048', '54817', 'complete_date1', 'offered_by1', 'format1', '4300.00' );
insert into section values ('3177', '11525', 'complete_date2', 'offered_by2', 'format2', '6000.00' );
insert into section values ('3206', '55269', 'complete_date3', 'offered_by3', 'format3', '3200.00' );
insert into section values ('6918', '72103', 'complete_date4', 'offered_by4', 'format4', '4200.00' );
insert into section values ('6654', '41055', 'complete_date5', 'offered_by5', 'format5', '2500.00' );

/* complete_date = (year) */
insert into complete_date values ('2019');
insert into complete_date values ('2019');
insert into complete_date values ('2019');
insert into complete_date values ('2020');
insert into complete_date values ('2020');

/* course = (c_code, title, level, description, status, retail_price) */
insert into course values ('8048', 'title1', 'level1', 'description1', 'status1', '4500.00' );
insert into course values ('3177', 'title2', 'level2', 'description2', 'status2', '1000.00' );
insert into course values ('3206', 'title3', 'level3', 'description3', 'status3', '3500.00' );
insert into course values ('6918', 'title4', 'level4', 'description4', 'status4', '4500.00' );
insert into course values ('6654', 'title5', 'level5', 'description5', 'status5', '2500.00' );

/* person = (per_id, name, street_number, street_name, apt_number, zip_code, email, gender, phone) */
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

/* zip_code = (city, state) */
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

/* skill = (sk_code, title, description, level) */
insert into skill values ('8854', 'sk.title1', 'sk.description1', 'sk.level1');
insert into skill values ('7943', 'sk.title2', 'sk.description2', 'sk.level2');
insert into skill values ('6781', 'sk.title3', 'sk.description3', 'sk.level3');
insert into skill values ('7496', 'sk.title4', 'sk.description4', 'sk.level4');
insert into skill values ('2358', 'sk.title5', 'sk.description5', 'sk.level5');

/* job = (job_code, pos_code, required_skill, pay_type, cate_code, company) */
insert into job values ('98094', '229', 'required_skill1', 'pay_type1', '258', 'company1');
insert into job values ('29796', '245', 'required_skill2', 'pay_type1', '839', 'company2');
insert into job values ('11889', '998', 'required_skill3', 'pay_type1', '339', 'company3');
insert into job values ('66442', '437', 'required_skill4', 'pay_type2', '335', 'company4');
insert into job values ('10332', '653', 'required_skill5', 'pay_type2', '771', 'company5');

/* pay_type = (pay_rate, emp_mode) */
insert into pay_type values ('12.50', 'emp_mode');
insert into pay_type values ('13.50', 'emp_mode');
insert into pay_type values ('20.00', 'emp_mode');
insert into pay_type values ('17.50', 'emp_mode');
insert into pay_type values ('25.00', 'emp_mode');

/* position = (pos_code, title, description, pay_range_high, pay_range_low) */
insert into position values ('229', 'title1', 'description', '67000.00', '45000.00');
insert into position values ('245', 'title2', 'description', '90000.00', '70000.00');
insert into position values ('998', 'title3', 'description', '85000.00', '60000.00');
insert into position values ('437', 'title4', 'description', '55000.00', '45000.00');
insert into position values ('653', 'title5', 'description', '60000.00', '50000.00');

/* company = (comp_id, street_number, street_name, apt_number, zip_code, industry_group, sub_industry, website) */
insert into company values ('72597', '5646', 'street_name1', '1', '51541', 'industry_group1', 'sub_industry1', 'website1');
insert into company values ('45539', '9898', 'street_name2', '2', '48615', 'industry_group2', 'sub_industry2', 'website2');
insert into company values ('40356', '3211', 'street_name3', '3', '98756', 'industry_group3', 'sub_industry3', 'website3');
insert into company values ('78030', '8745', 'street_name4', '4', '15498', 'industry_group4', 'sub_industry4', 'website4');
insert into company values ('65207', '5687', 'street_name5', '5', '89745', 'industry_group5', 'sub_industry5', 'website5');

/* GICS = (ind_id, ind_title, level, description, parent_id) */
insert into GICS values ('1111', 'ind_title', 'level', 'description', 'parent_id');
insert into GICS values ('2222', 'ind_title', 'level', 'description', 'parent_id');
insert into GICS values ('3333', 'ind_title', 'level', 'description', 'parent_id');
insert into GICS values ('4444', 'ind_title', 'level', 'description', 'parent_id');
insert into GICS values ('5555', 'ind_title', 'level', 'description', 'parent_id');

/* Start of Relationships */
/* Course_sec = (sec_no, c_code, complete_date) */
insert into course_sec values ('54817', '8048', 'complete_date');
insert into course_sec values ('11525', '3177', 'complete_date');
insert into course_sec values ('55269', '3206', 'complete_date');
insert into course_sec values ('72103', '6918', 'complete_date');
insert into course_sec values ('41055', '6654', 'complete_date');

/* Prerequisite = (c_code) */
insert into prerequisite values ('8048');
insert into prerequisite values ('3177');
insert into prerequisite values ('3206');
insert into prerequisite values ('6918');
insert into prerequisite values ('6654');

/* Teaches =  (c_code, sk_code) */
insert into teaches values ('8048', '8854');
insert into teaches values ('3177', '7943');
insert into teaches values ('3206', '6781');
insert into teaches values ('6918', '7496');
insert into teaches values ('6654', '2358');

/* Requires =  (sk_code, pos_code) */
insert into requires values ('8854', 'pos_code');
insert into requires values ('7943', 'pos_code');
insert into requires values ('6781', 'pos_code');
insert into requires values ('7496', 'pos_code');
insert into requires values ('2358', 'pos_code');

/* Takes = (c_code, sec_no, complete_date) */
insert into takes values ('8048', '54817', 'complete_date');
insert into takes values ('3177', '11525', 'complete_date');
insert into takes values ('3206', '55269', 'complete_date');
insert into takes values ('6918', '72103', 'complete_date');
insert into takes values ('6654', '41055', 'complete_date');

/* Has_Skill = (sk_code, per_id ) */
insert into has_skill values ('8854', '6611825');
insert into has_skill values ('7943', '4716762');
insert into has_skill values ('6781', '6258167');
insert into has_skill values ('7496', '8829511');
insert into has_skill values ('2358', '4271688');

/* Requires_by_job = (sk_code, job_code) */
insert into requires_by_job values ('8854', '98094');
insert into requires_by_job values ('7943', '29796');
insert into requires_by_job values ('6781', '11889');
insert into requires_by_job values ('7496', '66442');
insert into requires_by_job values ('2358', '10332');

/* Works = (per_id, start_date, end_date, job_code) */
insert into works values ('6611825', '02012020', '05012020', '98094');
insert into works values ('4716762', '03012019', NULL, '29796');
insert into works values ('6258167', '04012018', '02012019', '11889');
insert into works values ('8829511', '01012017', '04012020', '66442');
insert into works values ('4271688', '01012016', NULL, '10332');

/* Provides =( job_code, comp_id) */
insert into provides values ('98094', '72597');
insert into provides values ('29796', '45539');
insert into provides values ('11889', '40356');
insert into provides values ('66442', '78030');
insert into provides values ('10332', '65207');

/* Industry = (ind_id, comp_id) */
insert into industry values ('1111', '72597');
insert into industry values ('2222', '45539');
insert into industry values ('3333', '40356');
insert into industry values ('4444', '78030');
insert into industry values ('5555', '65207');

