/* SECTION 1.1.1 - SDS Table Creation */

SET client_encoding TO 'UTF8';


SET check_function_bodies = false;

CREATE SCHEMA IF NOT EXISTS sds;
ALTER SCHEMA sds OWNER TO scd_testuser;

SET search_path = sds,oracle,public;


CREATE TABLE "a$lte" (
	spalte1 varchar(8)
) ;


CREATE TABLE adrarch (
	scdid char(32),
	scdidflag char(1),
	scdid_lfd numeric(38),
	insert_datum timestamp NOT NULL,
	c char(2),
	o char(16),
	ou char(32),
	l char(32),
	localityint char(32),
	localitynat varchar(32),
	salid char(16),
	cn varchar(64),
	sn char(64),
	snflag char(1),
	givenname char(40),
	givennameflag char(1),
	commonnamenat varchar(64),
	commonnamenatflag char(1),
	initials char(8),
	initialsflag char(1),
	gender char(1),
	genderflag char(1),
	personaltitle varchar(16),
	personaltitleflag char(1),
	graduatetitle varchar(16),
	graduatetitleflag char(1),
	mainfunction varchar(128),
	mainfunctionflag char(1),
	department varchar(64),
	departmentflag char(1),
	roomnumber varchar(16),
	roomnumberflag char(1),
	orgid varchar(255),
	orgidflag char(1),
	mail varchar(240),
	mailflag char(1),
	telephonenr char(32),
	telephonenrflag char(1),
	faxnr char(32),
	faxnrflag char(1),
	secretary varchar(255),
	secretaryflag char(1),
	repres varchar(255),
	represflag char(1),
	mobile char(32),
	mobileflag char(1),
	videokonf1 char(32),
	videokonf1flag char(1),
	videokonf2 char(32),
	videokonf2flag char(1),
	publickey char(1),
	publickeyflag char(1),
	pager char(32),
	pagerflag char(1),
	costlocation char(32),
	costlocationflag char(1),
	personalidnr char(32),
	personalidnrflag char(1),
	securephone char(1),
	securephoneflag char(1),
	alternphone char(32),
	alternphoneflag char(1),
	personalfax char(32),
	personalfaxflag char(1),
	securefax char(1),
	securefaxflag char(1),
	netmeeting varchar(128),
	netmeetingflag char(1),
	maident char(16),
	maidentflag char(1),
	gid char(8),
	gidflag char(1),
	postofficebox char(32),
	postofficeboxflag char(1),
	costlocationun char(4),
	costlocationunflag char(1),
	surnamenat varchar(40),
	surnamenatflag char(1),
	givennamenat varchar(40),
	givennamenatflag char(1),
	departmenttext varchar(255),
	departmenttextflag char(1),
	releaseext char(1),
	releaseextflag char(1),
	persrem varchar(255),
	persremflag char(1),
	url_personal varchar(255),
	url_personalflag char(1),
	scdrob char(8),
	scdrobflag char(1),
	recordtype char(8),
	recordtypeflag char(1),
	joindate char(15),
	joindateflag char(1),
	leavedate char(15),
	leavedateflag char(1),
	validdate char(15),
	validdateflag char(1),
	expiredate char(15),
	expiredateflag char(1),
	userpassword char(16),
	initpassword char(48),
	pwinittime char(15),
	initcounter char(4),
	initfailcounter char(4),
	loginpassword char(48),
	pwmodtime char(15),
	loginfailcounter char(4),
	pwhistory varchar(255),
	gapassword char(48),
	tcgid char(8),
	tcgidflag char(1),
	tcgid_lfd numeric(38),
	certindicator char(1),
	phonenumbers varchar(128),
	lieferantnr char(10),
	lieferantnrflag char(1),
	nickname varchar(40),
	nicknameflag char(1),
	orgcodeid char(8),
	unitid char(8),
	unit varchar(16),
	manager1 char(8),
	manager2 char(8),
	managerf1 char(8),
	managerf2 char(8),
	managerf3 char(8),
	departmentnat varchar(255),
	delegation char(1),
	itacc char(1),
	reqacc char(1),
	reqmail char(1),
	reqmbox char(1),
	reststart varchar(16),
	restend varchar(16),
	vip char(1),
	companycode char(1),
	mgmtresp char(32),
	notwebvisible char(2),
	mailpriv char(128),
	mobilepriv char(32)
) ;
ALTER  TABLE adrarch OWNER TO scd_testuser;
CREATE INDEX iemail ON adrarch (mail);
CREATE INDEX itcgid ON adrarch (tcgid);
CREATE INDEX ixadrarch ON adrarch (scdid, scdid_lfd, insert_datum);
ALTER TABLE adrarch ALTER COLUMN INSERT_DATUM SET NOT NULL;


CREATE TABLE adrdat (
	c char(2),
	o varchar(16),
	ou varchar(32),
	l varchar(32),
	cn varchar(64),
	sn varchar(64),
	gn varchar(40),
	cnamnat varchar(64),
	snamnat varchar(40),
	snampre varchar(16),
	snamadd varchar(16),
	gnamnat varchar(40),
	lastnam varchar(40),
	i varchar(8),
	gender char(1),
	personaltitle varchar(16),
	graduatetitle varchar(16),
	mail varchar(240),
	department varchar(64),
	departmenttext varchar(255),
	mainfunc varchar(128),
	building varchar(32),
	roomnumber varchar(32),
	postofficebox varchar(32),
	telnumber varchar(32),
	alternphone varchar(32),
	securephone char(1),
	faxnumber varchar(32),
	personalfax varchar(32),
	faxnumsec char(1),
	mobile varchar(32),
	vidconfnum1 varchar(32),
	vidconfnum2 varchar(32),
	pager varchar(32),
	netmeeting char(1),
	urlpers varchar(255),
	persremark varchar(255),
	robinson char(8),
	secretary varchar(255),
	representation varchar(255),
	sponsor char(8),
	costlocation varchar(512),
	costlocunit varchar(32),
	orgid varchar(16),
	persidnum varchar(32),
	maident char(16),
	appkey varchar(16),
	scdid varchar(32),
	gid char(8),
	usertype char(1),
	recordtype char(1),
	contractstat char(1),
	joindate varchar(16),
	validdate varchar(16),
	leavedate varchar(16),
	expiredate varchar(16),
	releaseext char(1),
	liefntnr integer,
	liefnr integer,
	isinscd smallint,
	lieferkey varchar(255),
	nicknam varchar(40),
	orgcodeid char(8),
	unitid char(8),
	unit varchar(16),
	manager1 char(8),
	manager2 char(8),
	managerf1 char(8),
	managerf2 char(8),
	managerf3 char(8),
	departmentnat varchar(128),
	mastat char(1),
	azubiend varchar(16),
	reststart varchar(16),
	restend varchar(16),
	vip char(1),
	itacc char(1),
	delegation char(1),
	gpcompany varchar(40),
	reqpki char(1),
	reqbadge char(1),
	reqacc char(1),
	reqmbox char(1),
	reqmail char(1),
	companycode char(1),
	mgmtresp varchar(32),
	notwebvisible char(2),
	mailpriv varchar(128),
	mobilepriv varchar(32),
	gcc varchar(8),
	division varchar(8),
	orgidperiod char(6),
	orgidclass char(1),
	wcunit varchar(64),
	actiontype char(2),
	actionreason char(2),
	actionstart varchar(16),
	makreis varchar(32),
	magruppe varchar(32),
	juper varchar(32),
	prefsn varchar(64),
	orgleva varchar(64),
	orglevb varchar(64),
	orglevc varchar(64),
	orglevd varchar(64),
	orglevx varchar(64),
	altou varchar(32),
	fksource varchar(40),
	prefpronoun varchar(40),
	cofres char(2)
) ;
ALTER  TABLE adrdat OWNER TO scd_testuser;
CREATE INDEX ixadrdatcostlocation ON adrdat (costlocation);
CREATE INDEX ixadrdatcostlocunit ON adrdat (costlocunit);
CREATE INDEX ixadrdatgid ON adrdat (gid);
CREATE UNIQUE INDEX ixadrdatkey ON adrdat (lieferkey, liefntnr);
CREATE INDEX ixadrdatliefnr ON adrdat (liefnr);
CREATE INDEX ixadrdatmail ON adrdat (mail);


CREATE TABLE app_exec (
	id bigint GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1 MAXVALUE 9223372036854775807 MINVALUE 1 NO CYCLE CACHE 20 ),
	app_name varchar(64),
	host_name varchar(64),
	pid varchar(12),
	started timestamp,
	last_ping timestamp
) ;
ALTER  TABLE app_exec OWNER TO scd_testuser;
ALTER TABLE app_exec ALTER COLUMN ID SET NOT NULL;


CREATE TABLE attr (
	bez varchar(20),
	txt varchar(120),
	min smallint,
	max smallint,
	zchn varchar(255)
) ;
ALTER  TABLE attr OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixattr ON attr (bez);


CREATE TABLE attribute (
	m_o varchar(50),
	feldname_scd varchar(50) NOT NULL,
	attributname varchar(50),
	bezeichnung_de varchar(150),
	bezeichnung_en varchar(150),
	ldapname varchar(50),
	abbr varchar(50),
	impl_abbr varchar(50),
	name_schema varchar(50),
	typ varchar(50),
	stamm_adress varchar(50),
	index_ varchar(50),
	herkunft varchar(50),
	beispiel varchar(250),
	example varchar(250),
	beschreibung varchar(4000),
	description varchar(4000),
	anzeige varchar(50),
	verknadr bigint,
	verknstamm bigint,
	hilfe varchar(4000),
	help varchar(4000),
	source varchar(100),
	category varchar(100),
	link varchar(500),
	link_2nd varchar(500),
	gov_dept varchar(255),
	gov_contact varchar(500),
	parameter_value varchar(500),
	plausability_checks varchar(250)
) ;
ALTER  TABLE attribute OWNER TO scd_testuser;
ALTER TABLE attribute ALTER COLUMN FELDNAME_SCD SET NOT NULL;


CREATE TABLE attribute_old (
	order_ bigint,
	feldnr bigint NOT NULL,
	feld varchar(50),
	m_o varchar(50),
	feldname_scd varchar(50) NOT NULL,
	attributname varchar(50),
	bezeichnung_de varchar(150),
	bezeichnung_en varchar(150),
	ldapname varchar(50),
	abbr varchar(50),
	impl_abbr varchar(50),
	name_schema varchar(50),
	typ varchar(50),
	stamm_adress varchar(50),
	index_ varchar(50),
	herkunft varchar(50),
	beispiel varchar(250),
	example varchar(250),
	beschreibung varchar(255),
	description varchar(255),
	anzeige varchar(50),
	verknadr bigint,
	verknstamm bigint,
	hilfe varchar(4000),
	help varchar(4000)
) ;
ALTER  TABLE attribute_old OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixattribute ON attribute_old (feldname_scd);
ALTER TABLE attribute_old ALTER COLUMN FELDNR SET NOT NULL;
ALTER TABLE attribute_old ALTER COLUMN FELDNAME_SCD SET NOT NULL;


CREATE TABLE attrset (
	bez varchar(20),
	txt varchar(120),
	attr varchar(20),
	feldnr smallint NOT NULL,
	pflicht char(1)
) ;
ALTER  TABLE attrset OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixattrset ON attrset (bez, attr);
ALTER TABLE attrset ALTER COLUMN FELDNR SET NOT NULL;


CREATE TABLE attr_check_norm (
	bez varchar(20),
	normfunction varchar(255),
	checkfunction varchar(255),
	dbnormfunction varchar(255)
) ;
ALTER  TABLE attr_check_norm OWNER TO scd_testuser;


CREATE TABLE attr_disp_select (
	bez varchar(20),
	headline_de varchar(100),
	headline_en varchar(100),
	header_de varchar(4000),
	header_en varchar(4000),
	visible varchar(1),
	template varchar(50)
) ;
ALTER  TABLE attr_disp_select OWNER TO scd_testuser;


CREATE TABLE attr_utf8 (
	bez varchar(20) NOT NULL
) ;
ALTER  TABLE attr_utf8 OWNER TO scd_testuser;
ALTER TABLE attr_utf8 ADD PRIMARY KEY (bez);
ALTER TABLE attr_utf8 ALTER COLUMN BEZ SET NOT NULL;


CREATE TABLE batch_job_execution (
	job_execution_id bigint,
	version bigint,
	job_instance_id bigint,
	create_time timestamp,
	start_time timestamp,
	end_time timestamp,
	status varchar(10),
	exit_code varchar(2500),
	exit_message varchar(2500),
	last_updated timestamp,
	job_configuration_location varchar(2500)
) ;
ALTER  TABLE batch_job_execution OWNER TO scd_testuser;


CREATE TABLE batch_job_execution_context (
	job_execution_id bigint,
	short_context varchar(2500),
	serialized_context text
) ;
ALTER  TABLE batch_job_execution_context OWNER TO scd_testuser;


CREATE TABLE batch_job_execution_params (
	job_execution_id bigint,
	type_cd varchar(6),
	key_name varchar(100),
	string_val varchar(250),
	date_val timestamp,
	long_val bigint,
	double_val bigint,
	identifying char(1)
) ;
ALTER  TABLE batch_job_execution_params OWNER TO scd_testuser;


CREATE TABLE batch_job_instance (
	job_instance_id bigint,
	version bigint,
	job_name varchar(100),
	job_key varchar(32)
) ;
ALTER  TABLE batch_job_instance OWNER TO scd_testuser;


CREATE TABLE batch_step_execution (
	step_execution_id bigint,
	version bigint,
	step_name varchar(100),
	job_execution_id bigint,
	start_time timestamp,
	end_time timestamp,
	status varchar(10),
	commit_count bigint,
	read_count bigint,
	filter_count bigint,
	write_count bigint,
	read_skip_count bigint,
	write_skip_count bigint,
	process_skip_count bigint,
	rollback_count bigint,
	exit_code varchar(2500),
	exit_message varchar(2500),
	last_updated timestamp
) ;
ALTER  TABLE batch_step_execution OWNER TO scd_testuser;


CREATE TABLE batch_step_execution_context (
	step_execution_id bigint,
	short_context varchar(2500),
	serialized_context text
) ;
ALTER  TABLE batch_step_execution_context OWNER TO scd_testuser;


CREATE TABLE bdsg_escalation (
	sponsor_gid char(8) NOT NULL,
	supplier_id integer NOT NULL,
	escalation_type varchar(32) NOT NULL,
	email_counter integer NOT NULL
) ;
ALTER  TABLE bdsg_escalation OWNER TO scd_testuser;
ALTER TABLE bdsg_escalation ALTER COLUMN SPONSOR_GID SET NOT NULL;
ALTER TABLE bdsg_escalation ALTER COLUMN SUPPLIER_ID SET NOT NULL;
ALTER TABLE bdsg_escalation ALTER COLUMN ESCALATION_TYPE SET NOT NULL;
ALTER TABLE bdsg_escalation ALTER COLUMN EMAIL_COUNTER SET NOT NULL;


CREATE TABLE berch (
	berchnr integer,
	berchid varchar(120),
	stellvid varchar(120),
	nick varchar(120),
	berchsn varchar(64),
	berchgn varchar(40),
	berchc varchar(2),
	bercho varchar(16),
	berchou varchar(32),
	berchl varchar(32),
	berchdep varchar(40),
	stellvsn varchar(64),
	stellvgn varchar(40),
	stellvc varchar(2),
	stellvo varchar(16),
	stellvou varchar(32),
	stellvl varchar(32),
	stellvdep varchar(40),
	changedate timestamp,
	commitdate timestamp,
	accsa smallint,
	accsu smallint,
	remit smallint,
	remtool smallint,
	mail2req smallint,
	mail2own smallint,
	mail2sp smallint,
	senddnregmail smallint DEFAULT 1
) ;
ALTER  TABLE berch OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixberch ON berch (berchnr);


CREATE TABLE bpr_actids (
	ut char(1),
	fionaid varchar(10),
	pki bigint,
	card bigint,
	itaccount char(1)
) ;
ALTER  TABLE bpr_actids OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixbpractids ON bpr_actids (ut, fionaid, pki, card, itaccount);


CREATE TABLE bpr_drop (
	id bigint,
	text varchar(50),
	event varchar(50)
) ;
ALTER  TABLE bpr_drop OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixbprdrop ON bpr_drop (id);


CREATE TABLE bpr_exclude (
	gid char(8)
) ;
ALTER  TABLE bpr_exclude OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixbprexclude ON bpr_exclude (gid);


CREATE TABLE bpr_exclude_rule (
	rule_number bigint,
	c varchar(2),
	o varchar(16),
	ou varchar(32),
	l varchar(32),
	department varchar(64),
	ut varchar(1),
	account varchar(1),
	id bigint
) ;
ALTER  TABLE bpr_exclude_rule OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixbprexcluderule ON bpr_exclude_rule (id);


CREATE TABLE bpr_fionaerrorcodes (
	id bigint,
	errormessage varchar(300),
	action varchar(20),
	field varchar(20),
	responsible varchar(200),
	mailid bigint,
	errormessage_en varchar(300)
) ;
ALTER  TABLE bpr_fionaerrorcodes OWNER TO scd_testuser;
CREATE INDEX ixbprfionaerrorcodes ON bpr_fionaerrorcodes (id);


CREATE TABLE bpr_fionaids (
	activitylistid varchar(10),
	activity varchar(255),
	ut varchar(1),
	activityen varchar(255)
) ;
ALTER  TABLE bpr_fionaids OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixbprfionaids ON bpr_fionaids (activitylistid);


CREATE TABLE bpr_gids (
	id bigint,
	gid char(8),
	surname_old varchar(100),
	surname_new varchar(100),
	valid_old timestamp,
	valid_new timestamp,
	leave_old timestamp,
	leave_new timestamp,
	ut_old varchar(1),
	ut_new varchar(1),
	o_old varchar(16),
	o_new varchar(16),
	l_old varchar(32),
	l_new varchar(32),
	modifydate timestamp,
	status_fiona_id bigint,
	done char(2),
	ou_old varchar(32),
	ou_new varchar(32),
	c_old varchar(2),
	c_new varchar(2)
) ;
ALTER  TABLE bpr_gids OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixbprgids ON bpr_gids (id);


CREATE TABLE bpr_gids_temp (
	id bigint,
	gid char(8),
	surname_old varchar(100),
	surname_new varchar(100),
	valid_old timestamp,
	valid_new timestamp,
	leave_old timestamp,
	leave_new timestamp,
	ut_old varchar(1),
	ut_new varchar(1),
	o_old varchar(16),
	o_new varchar(16),
	l_old varchar(32),
	l_new varchar(32),
	modifydate timestamp,
	status_fiona_id bigint,
	done char(2),
	ou_old varchar(32),
	ou_new varchar(32)
) ;
ALTER  TABLE bpr_gids_temp OWNER TO scd_testuser;


CREATE TABLE bpr_konfig (
	c varchar(2),
	o varchar(255),
	ou varchar(255),
	l varchar(255),
	department varchar(64),
	new_emp_pki bigint,
	new_emp_idcard bigint,
	term_pki bigint,
	term_idcard bigint,
	change_ut_pki bigint,
	change_ut_idcard bigint,
	ut char(1),
	change_organisation_pki bigint,
	change_organisation_idcard bigint,
	change_name_pki bigint,
	change_name_idcard bigint,
	bv bigint,
	rule_number bigint,
	renew_pki bigint,
	renew_idcard bigint,
	change_location_pki bigint,
	change_location_idcard bigint,
	access_mo_sa bigint,
	access_mo_so bigint,
	remove_it bigint,
	remove_tools bigint,
	mail_requestor bigint,
	mail_cardholder bigint,
	mail_sponsor bigint,
	account varchar(1),
	orgid varchar(8),
	ordernr varchar(50)
) ;
ALTER  TABLE bpr_konfig OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixbprkonfig ON bpr_konfig (rule_number);


CREATE TABLE bpr_mail (
	id bigint,
	subject varchar(200),
	body varchar(4000),
	recipient varchar(100)
) ;
ALTER  TABLE bpr_mail OWNER TO scd_testuser;
CREATE INDEX ixbprmail ON bpr_mail (id);


CREATE TABLE bpr_services (
	servicename varchar(50),
	startdate timestamp,
	enddate timestamp,
	isrunning varchar(1)
) ;
ALTER  TABLE bpr_services OWNER TO scd_testuser;
CREATE UNIQUE INDEX bpr_services_pk ON bpr_services (servicename);


CREATE TABLE bpr_status_fiona (
	id bigint,
	gid char(8),
	activity varchar(40),
	valid_date timestamp,
	leave_date timestamp,
	status varchar(100),
	request_date timestamp,
	error_count bigint,
	action varchar(40),
	responsible varchar(100),
	frombprgids bigint,
	rule varchar(100),
	status_date timestamp,
	sendimagemail bigint,
	missing varchar(100),
	filename varchar(40),
	fionaerrorcode bigint,
	fionaerrormesg varchar(350),
	berchnr varchar(10),
	modified_by varchar(10)
) ;
ALTER  TABLE bpr_status_fiona OWNER TO scd_testuser;
CREATE INDEX ixbprstatusfiona ON bpr_status_fiona (gid, activity, request_date);


CREATE TABLE char_replace (
	charset varchar(20),
	char_code smallint,
	char_code_replace smallint
) ;
ALTER  TABLE char_replace OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixcharreplace ON char_replace (charset, char_code);


CREATE TABLE check_err_mesg (
	checkfunction varchar(255),
	messageid varchar(10)
) ;
ALTER  TABLE check_err_mesg OWNER TO scd_testuser;


CREATE TABLE client_config (
	clientname varchar(64),
	clientid smallint,
	scd_web varchar(100),
	gcp smallint,
	fits char(1),
	hdt char(1),
	onboarding char(1),
	mvt char(1)
) ;
ALTER  TABLE client_config OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixclient_configname ON client_config (clientname);


CREATE TABLE cltrun (
	cmd varchar(255),
	id bigint
) ;
ALTER  TABLE cltrun OWNER TO scd_testuser;


CREATE TABLE cl_user (
	gid char(8),
	role_id char(10)
) ;
ALTER  TABLE cl_user OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixcl_user ON cl_user (gid);


CREATE TABLE contacts (
	gid varchar(8) NOT NULL,
	surname varchar(50),
	given_name varchar(50),
	email varchar(255)
) ;
ALTER  TABLE contacts OWNER TO scd_testuser;
ALTER TABLE contacts ADD PRIMARY KEY (gid);
ALTER TABLE contacts ALTER COLUMN GID SET NOT NULL;


CREATE TABLE contest (
	gid varchar(8) NOT NULL,
	timestamp timestamp NOT NULL,
	frage1 varchar(1) NOT NULL,
	frage2 varchar(1) NOT NULL,
	frage3 varchar(1) NOT NULL,
	frage4 varchar(1) NOT NULL,
	frage5 varchar(1) NOT NULL,
	frage6 varchar(1) NOT NULL,
	frage7 varchar(1) NOT NULL,
	frage8 varchar(1) NOT NULL,
	frage9 varchar(1) NOT NULL,
	frage10 varchar(1) NOT NULL
) ;
ALTER  TABLE contest OWNER TO scd_testuser;
ALTER TABLE contest ADD PRIMARY KEY (gid);
ALTER TABLE contest ALTER COLUMN FRAGE10 SET NOT NULL;
ALTER TABLE contest ALTER COLUMN FRAGE9 SET NOT NULL;
ALTER TABLE contest ALTER COLUMN FRAGE8 SET NOT NULL;
ALTER TABLE contest ALTER COLUMN FRAGE7 SET NOT NULL;
ALTER TABLE contest ALTER COLUMN FRAGE6 SET NOT NULL;
ALTER TABLE contest ALTER COLUMN FRAGE5 SET NOT NULL;
ALTER TABLE contest ALTER COLUMN FRAGE4 SET NOT NULL;
ALTER TABLE contest ALTER COLUMN FRAGE3 SET NOT NULL;
ALTER TABLE contest ALTER COLUMN FRAGE2 SET NOT NULL;
ALTER TABLE contest ALTER COLUMN FRAGE1 SET NOT NULL;
ALTER TABLE contest ALTER COLUMN GID SET NOT NULL;
ALTER TABLE contest ALTER COLUMN TIMESTAMP SET NOT NULL;


CREATE TABLE dn (
	c char(2),
	o varchar(16),
	ou varchar(32),
	l varchar(32),
	typ char(4),
	mainid varchar(120),
	sync char(1),
	liefntnr integer,
	berchnr integer,
	joins varchar(20),
	userset varchar(20),
	urlsuz varchar(128),
	denyset varchar(20),
	login char(1),
	parmset varchar(20)
) ;
ALTER  TABLE dn OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixdn ON dn (c, o, ou, l, typ);
CREATE INDEX ixdn_c ON dn (c);
CREATE INDEX ixdn_l ON dn (l);
CREATE INDEX ixdn_o ON dn (o);
CREATE INDEX ixdn_ou ON dn (ou);


CREATE TABLE dn_auto_reg_blacklist (
	c char(2),
	o varchar(16),
	l varchar(32),
	not_delivered_from_sal_from timestamp
) ;
ALTER  TABLE dn_auto_reg_blacklist OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixauto_reg_blacklist ON dn_auto_reg_blacklist (c, o, l);


CREATE TABLE dn_auto_reg_conf (
	c char(2),
	o varchar(16),
	type char(4),
	gid_supplier_gid varchar(16),
	gid_supplier_id integer,
	scd_supplier_id integer,
	unit_officer_id integer,
	join_set varchar(20),
	user_set varchar(20),
	deny_set varchar(20),
	url_suz varchar(128)
) ;
ALTER  TABLE dn_auto_reg_conf OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixauto_reg_conf ON dn_auto_reg_conf (c, o, type);


CREATE TABLE dn_backup2757 (
	c char(2),
	o varchar(16),
	ou varchar(32),
	l varchar(32),
	typ char(4),
	mainid varchar(120),
	sync char(1),
	liefntnr integer,
	berchnr integer,
	joins varchar(20),
	userset varchar(20),
	urlsuz varchar(128),
	denyset varchar(20),
	login char(1),
	parmset varchar(20)
) ;
ALTER  TABLE dn_backup2757 OWNER TO scd_testuser;


CREATE TABLE dn_log (
	ts timestamp,
	initiator varchar(16),
	operation varchar(20),
	c char(2),
	o varchar(16),
	l varchar(32),
	type char(4),
	unit_officer_gid varchar(16),
	gid_supplier_gid varchar(16),
	scd_supplier_gid varchar(16),
	join_set varchar(20),
	notes varchar(256)
) ;
ALTER  TABLE dn_log OWNER TO scd_testuser;


CREATE TABLE dn_matching (
	c varchar(2),
	o varchar(32),
	ou varchar(32),
	ou_new varchar(32),
	l varchar(32),
	user_type varchar(1),
	gv varchar(8),
	lv_full varchar(8),
	lv_join varchar(8)
) ;
ALTER  TABLE dn_matching OWNER TO scd_testuser;
CREATE INDEX icdnmatch_o ON dn_matching (o);
CREATE INDEX ixdnmatch_c ON dn_matching (c);
CREATE INDEX ixdnmatch_l ON dn_matching (l);
CREATE INDEX ixdnmatch_ou ON dn_matching (ou);
CREATE INDEX ixdnmatch_ou_new ON dn_matching (ou_new);


CREATE TABLE fits_actionmapping (
	owner varchar(8),
	usertype varchar(1),
	relevantforevent bigint,
	sourceactiontype varchar(20),
	actiontype varchar(2),
	actionreason varchar(2),
	nameofactiontype varchar(128),
	errormessage varchar(50),
	handling varchar(20)
) ;
ALTER  TABLE fits_actionmapping OWNER TO scd_testuser;


CREATE TABLE fits_actionmapping_old (
	actiontype varchar(2),
	actionreason varchar(2),
	nameofactiontype varchar(128),
	relevantforevent varchar(20),
	nameoffitsevent varchar(32),
	relevantforeventexternal varchar(20)
) ;
ALTER  TABLE fits_actionmapping_old OWNER TO scd_testuser;


CREATE TABLE fits_blacklist (
	gid varchar(8) NOT NULL,
	creation_date timestamp DEFAULT statement_timestamp(),
	note varchar(500)
) ;
ALTER  TABLE fits_blacklist OWNER TO scd_testuser;
CREATE INDEX ix_fits_blacklist ON fits_blacklist (gid);
ALTER TABLE fits_blacklist ALTER COLUMN GID SET NOT NULL;


CREATE TABLE fits_events (
	id bigint,
	gid char(8),
	valid_date timestamp,
	leave_date timestamp,
	ut char(1),
	c char(2),
	o varchar(16),
	ou varchar(32),
	l varchar(32),
	are varchar(32),
	event smallint,
	eventdate timestamp,
	modifydate timestamp,
	done char(2),
	modifymasterdate timestamp,
	status varchar(128),
	error varchar(512),
	event_reason varchar(256),
	trigger_update varchar(1),
	deletedate timestamp,
	orgcode varchar(60)
) ;
ALTER  TABLE fits_events OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixfits_events ON fits_events (id);


CREATE TABLE fits_events_bak (
	id bigint,
	gid char(8),
	valid_date timestamp,
	leave_date timestamp,
	ut char(1),
	c char(2),
	o varchar(16),
	ou varchar(32),
	l varchar(32),
	are varchar(32),
	event smallint,
	eventdate timestamp,
	modifydate timestamp,
	done char(2),
	modifymasterdate timestamp,
	status varchar(128),
	error varchar(512),
	event_reason varchar(256),
	trigger_update varchar(1),
	deletedate timestamp
) ;
ALTER  TABLE fits_events_bak OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixfits_events_bak ON fits_events_bak (id);
CREATE INDEX ixfits_events_bak_gid ON fits_events_bak (gid, id desc);


CREATE TABLE fits_scope (
	scope varchar(16),
	query varchar(1000),
	active char(1),
	are_filter varchar(4000),
	department_filter varchar(500),
	event_filter varchar(50),
	scope_groups varchar(50)
) ;
ALTER  TABLE fits_scope OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixfits_scope ON fits_scope (scope);


CREATE TABLE fits_trigger (
	id bigint,
	gid char(8),
	valid_old timestamp,
	valid_new timestamp,
	leave_old timestamp,
	leave_new timestamp,
	ut_old char(1),
	ut_new char(1),
	c_old char(2),
	c_new char(2),
	o_old varchar(16),
	o_new varchar(16),
	ou_old varchar(32),
	ou_new varchar(32),
	l_old varchar(32),
	l_new varchar(32),
	are_old varchar(32),
	are_new varchar(32),
	modifydate timestamp,
	done char(2),
	surname_old varchar(100),
	surname_new varchar(100),
	owner char(8)
) ;
ALTER  TABLE fits_trigger OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixfits_trigger ON fits_trigger (id);


CREATE TABLE gb_3150_dn (
	c varchar(26),
	o varchar(26),
	ou varchar(26),
	l varchar(26),
	typ varchar(26),
	mainid varchar(26),
	sync varchar(26),
	liefntnr numeric(38),
	berchnr numeric(38),
	joins varchar(26),
	userset varchar(26),
	urlsuz varchar(128),
	denyset varchar(26),
	login varchar(26),
	parmset varchar(26)
) ;
ALTER  TABLE gb_3150_dn OWNER TO scd_testuser;


CREATE TABLE gb_coloradokorrektur (
	gid varchar(26),
	c varchar(26),
	o varchar(26),
	ou varchar(26),
	l varchar(26),
	lastnam varchar(4000),
	gn varchar(4000),
	snampre varchar(26),
	snamadd varchar(26),
	snamnat varchar(26),
	gnamnat varchar(26),
	cnamnat varchar(128),
	i varchar(26),
	gender varchar(26),
	personaltitle varchar(26),
	graduatetitle varchar(26),
	usertype varchar(26),
	recordtype varchar(26),
	contractstat varchar(26),
	mail varchar(4000),
	department varchar(4000),
	departmenttext varchar(4000),
	mainfunc varchar(4000),
	building varchar(26),
	roomnumber varchar(26),
	postofficebox varchar(26),
	telnumber varchar(4000),
	alternphone varchar(4000),
	securephone varchar(26),
	faxnumber varchar(26),
	personalfax varchar(26),
	faxnumsec varchar(26),
	mobile varchar(4000),
	vidconfnum1 varchar(26),
	vidconfnum2 varchar(26),
	pager varchar(26),
	netmeeting varchar(26),
	gidsec varchar(26),
	gidrep varchar(26),
	sponsor varchar(26),
	persremark varchar(4000),
	urlpers varchar(4000),
	costlocation varchar(26),
	costlocunit varchar(26),
	persidnum numeric(38),
	scdidm varchar(26),
	maident varchar(26),
	appkey varchar(26),
	leavedate timestamp,
	validdate timestamp,
	expiredate varchar(26),
	orgid varchar(26),
	nicknam varchar(26),
	mastat numeric(38),
	azubiend numeric(38),
	reststart numeric(38),
	restend numeric(38),
	vip varchar(26),
	itacc varchar(26),
	delegation varchar(26),
	gpcompany varchar(26),
	reqpki varchar(26),
	reqbadge varchar(26),
	reqacc varchar(26),
	reqmbox varchar(26),
	reqmail varchar(26),
	manager1 varchar(26),
	mailpriv varchar(26),
	mobilepriv varchar(26),
	actiontype numeric(38),
	actionreason numeric(38),
	actionstart timestamp,
	magruppe varchar(26),
	makreis varchar(26),
	juper numeric(38)
) ;
ALTER  TABLE gb_coloradokorrektur OWNER TO scd_testuser;


CREATE TABLE gb_colorado_1010 (
	gid varchar(26),
	c varchar(26),
	o varchar(26),
	ou varchar(26),
	l varchar(26),
	usertype varchar(26),
	recordtype varchar(26),
	contractstat varchar(26),
	leavedate timestamp,
	validdate timestamp
) ;
ALTER  TABLE gb_colorado_1010 OWNER TO scd_testuser;


CREATE TABLE gb_colorado_export (
	pernr numeric(38),
	begda timestamp,
	endda timestamp,
	gid varchar(26)
) ;
ALTER  TABLE gb_colorado_export OWNER TO scd_testuser;


CREATE TABLE gb_colorado_scdkorrektur (
	gid varchar(26),
	c varchar(26),
	o varchar(26),
	ou varchar(26),
	l varchar(26),
	lastnam varchar(26),
	gn varchar(26),
	snampre varchar(26),
	snamadd varchar(26),
	snamnat varchar(26),
	gnamnat varchar(26),
	cnamnat varchar(128),
	i varchar(26),
	gender varchar(26),
	personaltitle varchar(26),
	graduatetitle varchar(26),
	usertype varchar(26),
	recordtype varchar(26),
	contractstat varchar(26),
	mail varchar(26),
	department varchar(26),
	departmenttext varchar(26),
	mainfunc varchar(128),
	building varchar(26),
	roomnumber varchar(26),
	postofficebox varchar(26),
	telnumber varchar(26),
	alternphone varchar(26),
	securephone varchar(26),
	faxnumber varchar(26),
	personalfax varchar(26),
	faxnumsec varchar(26),
	mobile varchar(26),
	vidconfnum1 varchar(26),
	vidconfnum2 varchar(26),
	pager varchar(26),
	netmeeting varchar(26),
	gidsec varchar(26),
	gidrep varchar(26),
	sponsor varchar(26),
	persremark varchar(26),
	urlpers varchar(26),
	costlocationx varchar(26),
	costlocunit varchar(26),
	persidnum numeric(38),
	scdidm varchar(26),
	maident varchar(26),
	appkey varchar(26),
	leavedate timestamp,
	validdate timestamp,
	expiredate varchar(26),
	orgid varchar(26),
	nicknam varchar(26),
	mastat numeric(38),
	azubiend numeric(38),
	reststart numeric(38),
	restend numeric(38),
	vip varchar(26),
	itacc varchar(26),
	delegation varchar(26),
	gpcompany varchar(26),
	reqpki varchar(26),
	reqbadge varchar(26),
	reqacc varchar(26),
	reqmbox varchar(26),
	reqmail varchar(26),
	manager1 varchar(26),
	mailpriv varchar(26),
	mobilepriv varchar(26),
	actiontype numeric(38),
	actionreason numeric(38),
	actionstart timestamp,
	magruppe varchar(26),
	makreis varchar(26),
	juper numeric(38)
) ;
ALTER  TABLE gb_colorado_scdkorrektur OWNER TO scd_testuser;


CREATE TABLE gb_colo_export (
	pernr numeric(38),
	begda timestamp,
	endda timestamp,
	gid varchar(26)
) ;
ALTER  TABLE gb_colo_export OWNER TO scd_testuser;


CREATE TABLE gb_colo_gid (
	gid varchar(26),
	valid_date varchar(26),
	leave_date numeric(38),
	user_type varchar(26),
	owner varchar(26),
	join_date varchar(26),
	sponsor varchar(26),
	c varchar(26),
	o varchar(26),
	ou varchar(26),
	l varchar(26),
	appl_internal_id varchar(26),
	appl_name varchar(26),
	confirmed numeric(38),
	scd numeric(38),
	isinscd numeric(38),
	delete_date varchar(26),
	delete_uid varchar(26),
	modify_data_date varchar(26),
	modify_data_uid varchar(26),
	confirm_date varchar(26),
	sync_date varchar(26)
) ;
ALTER  TABLE gb_colo_gid OWNER TO scd_testuser;


CREATE TABLE gb_dn_0612 (
	c varchar(26),
	o varchar(26),
	ou varchar(26),
	l varchar(26),
	typ varchar(26),
	mainid varchar(26),
	sync varchar(26),
	liefntnr numeric(38),
	berchnr numeric(38),
	joins varchar(26),
	userset varchar(26),
	urlsuz varchar(128),
	denyset varchar(26),
	login varchar(26),
	parmset varchar(26)
) ;
ALTER  TABLE gb_dn_0612 OWNER TO scd_testuser;


CREATE TABLE gb_iam_2809 (
	gid varchar(26)
) ;
ALTER  TABLE gb_iam_2809 OWNER TO scd_testuser;


CREATE TABLE gb_iam_energy (
	employeenumber varchar(26),
	sn varchar(26),
	givenname varchar(26),
	expiry_date varchar(26)
) ;
ALTER  TABLE gb_iam_energy OWNER TO scd_testuser;


CREATE TABLE gb_iam_siemens (
	employeenumber varchar(26),
	sn varchar(26),
	givenname varchar(26),
	expiry_date varchar(26)
) ;
ALTER  TABLE gb_iam_siemens OWNER TO scd_testuser;


CREATE TABLE gb_iam_siemens2 (
	employeenumber varchar(26),
	sn varchar(4000),
	givenname varchar(4000),
	expiry_date varchar(26)
) ;
ALTER  TABLE gb_iam_siemens2 OWNER TO scd_testuser;


CREATE TABLE gb_maildouble (
	mail varchar(128),
	gid1 varchar(26),
	gid2 varchar(26)
) ;
ALTER  TABLE gb_maildouble OWNER TO scd_testuser;


CREATE TABLE ggw_birthdate_wl (
	gid char(8) NOT NULL
) ;
ALTER  TABLE ggw_birthdate_wl OWNER TO scd_testuser;
ALTER TABLE ggw_birthdate_wl ADD PRIMARY KEY (gid);
ALTER TABLE ggw_birthdate_wl ALTER COLUMN GID SET NOT NULL;


CREATE TABLE ggw_chart_data (
	id bigint NOT NULL,
	month timestamp NOT NULL,
	reportconfigurationid bigint NOT NULL,
	value bigint
) ;
ALTER  TABLE ggw_chart_data OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixggw_chart_data ON ggw_chart_data (id);
ALTER TABLE ggw_chart_data ALTER COLUMN ID SET NOT NULL;
ALTER TABLE ggw_chart_data ALTER COLUMN MONTH SET NOT NULL;
ALTER TABLE ggw_chart_data ALTER COLUMN REPORTCONFIGURATIONID SET NOT NULL;


CREATE TABLE ggw_gid_batch (
	lfdnr bigint NOT NULL,
	instanz varchar(10) NOT NULL,
	no_reply_filter varchar(10),
	rename_in_to varchar(255),
	rename_out_from varchar(255),
	rename_out_to varchar(255),
	send_err smallint,
	tcp varchar(16),
	tcp_err varchar(16),
	transadm_err varchar(50),
	transferadm varchar(50),
	txt varchar(50) NOT NULL,
	userid varchar(50) NOT NULL
) ;
ALTER  TABLE ggw_gid_batch OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixggw_gid_batch ON ggw_gid_batch (lfdnr);
ALTER TABLE ggw_gid_batch ALTER COLUMN LFDNR SET NOT NULL;
ALTER TABLE ggw_gid_batch ALTER COLUMN INSTANZ SET NOT NULL;
ALTER TABLE ggw_gid_batch ALTER COLUMN TXT SET NOT NULL;
ALTER TABLE ggw_gid_batch ALTER COLUMN USERID SET NOT NULL;


CREATE TABLE ggw_gid_pw (
	userid varchar(8) NOT NULL,
	pw varchar(32),
	txt varchar(255)
) ;
ALTER  TABLE ggw_gid_pw OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixggw_gid_pw ON ggw_gid_pw (userid);
ALTER TABLE ggw_gid_pw ALTER COLUMN USERID SET NOT NULL;


CREATE TABLE ggw_jobs (
	job_id bigint NOT NULL,
	error_log varchar(1000),
	import_date timestamp,
	job_name varchar(255),
	jobtype char(1),
	state char(1),
	end_date timestamp,
	custom_id varchar(255)
) ;
ALTER  TABLE ggw_jobs OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixggw_jobs ON ggw_jobs (job_id);
ALTER TABLE ggw_jobs ALTER COLUMN JOB_ID SET NOT NULL;


CREATE TABLE ggw_login_blocked (
	requestor varchar(8),
	ip varchar(20),
	blocked_until timestamp
) ;
ALTER  TABLE ggw_login_blocked OWNER TO scd_testuser;


CREATE TABLE ggw_login_failure (
	request_date timestamp,
	ip varchar(20),
	method varchar(50),
	requestor varchar(8),
	u_id varchar(50)
) ;
ALTER  TABLE ggw_login_failure OWNER TO scd_testuser;


CREATE TABLE ggw_logs (
	id bigint NOT NULL,
	jobenddate timestamp,
	applicationinternalid varchar(255),
	applicationname varchar(255),
	birthdate varchar(255),
	birthname varchar(255),
	birthplace varchar(255),
	country varchar(255),
	dateofseparation varchar(255),
	entrydate varchar(255),
	errormessage varchar(255),
	exclude varchar(255),
	gender varchar(255),
	gid varchar(255),
	givenname varchar(255),
	location varchar(255),
	nameprefix varchar(255),
	namesuffix varchar(255),
	newentrydate varchar(255),
	organization varchar(255),
	organizationunit varchar(255),
	requestor varchar(255),
	scd varchar(255),
	sponsor varchar(255),
	surname varchar(255),
	u_id varchar(255),
	usertype varchar(255),
	state varchar(255),
	jobtype varchar(255),
	jobstartdate timestamp,
	linenumber bigint
) ;
ALTER  TABLE ggw_logs OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixggw_logs ON ggw_logs (id);
ALTER TABLE ggw_logs ALTER COLUMN ID SET NOT NULL;


CREATE TABLE ggw_method_count (
	id bigint NOT NULL,
	counter bigint NOT NULL,
	event_date timestamp NOT NULL,
	method varchar(255) NOT NULL,
	requestor varchar(8),
	u_id varchar(255) NOT NULL
) ;
ALTER  TABLE ggw_method_count OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixggw_method_count ON ggw_method_count (id);
ALTER TABLE ggw_method_count ALTER COLUMN ID SET NOT NULL;
ALTER TABLE ggw_method_count ALTER COLUMN COUNTER SET NOT NULL;
ALTER TABLE ggw_method_count ALTER COLUMN EVENT_DATE SET NOT NULL;
ALTER TABLE ggw_method_count ALTER COLUMN METHOD SET NOT NULL;
ALTER TABLE ggw_method_count ALTER COLUMN U_ID SET NOT NULL;


CREATE TABLE ggw_photoportal_blocked (
	gid varchar(8),
	ip varchar(20),
	blocked_until timestamp
) ;
ALTER  TABLE ggw_photoportal_blocked OWNER TO scd_testuser;


CREATE TABLE ggw_photoportal_failed (
	event_date timestamp,
	ip varchar(20),
	gid varchar(8),
	birthdate varchar(12)
) ;
ALTER  TABLE ggw_photoportal_failed OWNER TO scd_testuser;


CREATE TABLE ggw_properties (
	id bigint NOT NULL,
	key_column varchar(50) NOT NULL,
	value varchar(255)
) ;
ALTER  TABLE ggw_properties OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixggw_properties ON ggw_properties (id);
CREATE UNIQUE INDEX ixggw_propertieskey ON ggw_properties (key_column);
ALTER TABLE ggw_properties ALTER COLUMN ID SET NOT NULL;
ALTER TABLE ggw_properties ALTER COLUMN KEY_COLUMN SET NOT NULL;


CREATE TABLE ggw_report_config (
	id bigint NOT NULL,
	show_in_interval smallint,
	report_sql varchar(255) NOT NULL,
	title_de varchar(255) NOT NULL,
	title_en varchar(255) NOT NULL,
	calculation_time bigint,
	error_message varchar(255),
	last_chart_data_update timestamp,
	calculation_state bigint
) ;
ALTER  TABLE ggw_report_config OWNER TO scd_testuser;
ALTER TABLE ggw_report_config ADD PRIMARY KEY (id);
ALTER TABLE ggw_report_config ALTER COLUMN ID SET NOT NULL;
ALTER TABLE ggw_report_config ALTER COLUMN REPORT_SQL SET NOT NULL;
ALTER TABLE ggw_report_config ALTER COLUMN TITLE_DE SET NOT NULL;
ALTER TABLE ggw_report_config ALTER COLUMN TITLE_EN SET NOT NULL;


CREATE TABLE ggw_rfc_servers (
	id bigint NOT NULL,
	state bigint NOT NULL,
	description varchar(255) NOT NULL,
	host varchar(255) NOT NULL,
	language varchar(5) NOT NULL,
	mandant varchar(3) NOT NULL,
	max_connections bigint NOT NULL,
	password varchar(255) NOT NULL,
	sap_gateway varchar(255) NOT NULL,
	secure smallint NOT NULL,
	server_name varchar(255) NOT NULL,
	snc_lib varchar(255) NOT NULL,
	snc_myname varchar(255) NOT NULL,
	snc_partnername varchar(255) NOT NULL,
	snc_qop bigint NOT NULL,
	system_nr varchar(2) NOT NULL,
	user_id varchar(255) NOT NULL,
	unicode smallint NOT NULL,
	trace smallint NOT NULL
) ;
ALTER  TABLE ggw_rfc_servers OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixggw_rfc_servers ON ggw_rfc_servers (id);
ALTER TABLE ggw_rfc_servers ALTER COLUMN ID SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN STATE SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN DESCRIPTION SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN HOST SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN LANGUAGE SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN MANDANT SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN MAX_CONNECTIONS SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN PASSWORD SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN SAP_GATEWAY SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN SECURE SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN SERVER_NAME SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN SNC_LIB SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN SNC_MYNAME SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN SNC_PARTNERNAME SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN SNC_QOP SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN SYSTEM_NR SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN USER_ID SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN UNICODE SET NOT NULL;
ALTER TABLE ggw_rfc_servers ALTER COLUMN TRACE SET NOT NULL;


CREATE TABLE ggw_role (
	id bigint NOT NULL,
	name varchar(20),
	description varchar(64)
) ;
ALTER  TABLE ggw_role OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixggw_role ON ggw_role (id);
ALTER TABLE ggw_role ALTER COLUMN ID SET NOT NULL;


CREATE TABLE ggw_user (
	id bigint NOT NULL,
	version bigint NOT NULL,
	username varchar(50) NOT NULL,
	password varchar(255) NOT NULL,
	password_hint varchar(255),
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar(255) NOT NULL,
	phone_number varchar(255),
	website varchar(255),
	address varchar(150),
	city varchar(50) NOT NULL,
	province varchar(100),
	country varchar(100),
	postal_code varchar(15) NOT NULL,
	account_enabled smallint,
	account_expired smallint NOT NULL,
	account_locked smallint NOT NULL,
	credentials_expired smallint NOT NULL
) ;
ALTER  TABLE ggw_user OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixggw_user ON ggw_user (id);
CREATE UNIQUE INDEX ixggw_useremail ON ggw_user (email);
CREATE UNIQUE INDEX ixggw_userusername ON ggw_user (username);
ALTER TABLE ggw_user ALTER COLUMN ID SET NOT NULL;
ALTER TABLE ggw_user ALTER COLUMN VERSION SET NOT NULL;
ALTER TABLE ggw_user ALTER COLUMN USERNAME SET NOT NULL;
ALTER TABLE ggw_user ALTER COLUMN PASSWORD SET NOT NULL;
ALTER TABLE ggw_user ALTER COLUMN FIRST_NAME SET NOT NULL;
ALTER TABLE ggw_user ALTER COLUMN LAST_NAME SET NOT NULL;
ALTER TABLE ggw_user ALTER COLUMN EMAIL SET NOT NULL;
ALTER TABLE ggw_user ALTER COLUMN CITY SET NOT NULL;
ALTER TABLE ggw_user ALTER COLUMN POSTAL_CODE SET NOT NULL;
ALTER TABLE ggw_user ALTER COLUMN ACCOUNT_EXPIRED SET NOT NULL;
ALTER TABLE ggw_user ALTER COLUMN ACCOUNT_LOCKED SET NOT NULL;
ALTER TABLE ggw_user ALTER COLUMN CREDENTIALS_EXPIRED SET NOT NULL;


CREATE TABLE ggw_userid_conf (
	userid varchar(128) NOT NULL,
	maskbirthdate smallint NOT NULL
) ;
ALTER  TABLE ggw_userid_conf OWNER TO scd_testuser;
ALTER TABLE ggw_userid_conf ADD PRIMARY KEY (userid);
ALTER TABLE ggw_userid_conf ALTER COLUMN USERID SET NOT NULL;
ALTER TABLE ggw_userid_conf ALTER COLUMN MASKBIRTHDATE SET NOT NULL;


CREATE TABLE ggw_user_role (
	id bigint NOT NULL,
	user_name varchar(20) NOT NULL,
	role_name varchar(20) NOT NULL
) ;
ALTER  TABLE ggw_user_role OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixggw_user_role ON ggw_user_role (id);
ALTER TABLE ggw_user_role ALTER COLUMN ID SET NOT NULL;
ALTER TABLE ggw_user_role ALTER COLUMN USER_NAME SET NOT NULL;
ALTER TABLE ggw_user_role ALTER COLUMN ROLE_NAME SET NOT NULL;


CREATE TABLE gidakt (
	gid char(8)
) ;
ALTER  TABLE gidakt OWNER TO scd_testuser;


CREATE TABLE gidband (
	snrfirst char(32),
	snrlast char(32),
	isource integer,
	createdate timestamp,
	moddate timestamp
) ;
ALTER  TABLE gidband OWNER TO scd_testuser;
CREATE UNIQUE INDEX snrfirst_idx ON gidband (snrfirst, snrlast);


CREATE TABLE gidzchn (
	istelle integer,
	szeichen varchar(255),
	ilen integer
) ;
ALTER  TABLE gidzchn OWNER TO scd_testuser;
CREATE UNIQUE INDEX istelle_idx ON gidzchn (istelle);


CREATE TABLE gid_batch_error (
	error_message varchar(256),
	error_type varchar(64),
	field_name varchar(64),
	illegal_character varchar(1),
	record_validation_id integer,
	id bigint GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1 MAXVALUE 9223372036854775807 MINVALUE 1 NO CYCLE CACHE 20 ),
	illegal_length smallint
) ;
ALTER  TABLE gid_batch_error OWNER TO scd_testuser;
ALTER TABLE gid_batch_error ADD PRIMARY KEY (id);
ALTER TABLE gid_batch_error ALTER COLUMN ID SET NOT NULL;


CREATE TABLE gid_batch_record_validation (
	record varchar(1024),
	validation_id integer,
	id bigint GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1 MAXVALUE 9223372036854775807 MINVALUE 1 NO CYCLE CACHE 20 )
) ;
ALTER  TABLE gid_batch_record_validation OWNER TO scd_testuser;
ALTER TABLE gid_batch_record_validation ADD PRIMARY KEY (id);
ALTER TABLE gid_batch_record_validation ALTER COLUMN ID SET NOT NULL;


CREATE TABLE gid_batch_validation (
	id bigint GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1 MAXVALUE 9223372036854775807 MINVALUE 1 NO CYCLE CACHE 20 ),
	validation_token varchar(36),
	liefntnr integer
) ;
ALTER  TABLE gid_batch_validation OWNER TO scd_testuser;
ALTER TABLE gid_batch_validation ADD PRIMARY KEY (id);
ALTER TABLE gid_batch_validation ALTER COLUMN ID SET NOT NULL;


CREATE TABLE gid_bl_dn (
	c char(2),
	o varchar(16),
	ou varchar(32),
	l varchar(32)
) ;
ALTER  TABLE gid_bl_dn OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixgid_bl_dn ON gid_bl_dn (c, o, ou, l);


CREATE TABLE gid_bl_geb (
	birth_place varchar(40)
) ;
ALTER  TABLE gid_bl_geb OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixgid_bl_geb ON gid_bl_geb (birth_place);


CREATE TABLE gid_clearing (
	gid char(8),
	leavedate timestamp,
	sponsorgid char(8),
	detectiondate timestamp,
	ownergid char(8),
	createdtimestamp timestamp,
	modifiedtimestamp timestamp,
	escalationlevel smallint,
	mailid smallint,
	mailsentdate timestamp,
	status varchar(1024),
	invaliduser smallint DEFAULT 0,
	invalidowner smallint DEFAULT 0,
	supportnotified smallint DEFAULT 0,
	invaliduseremail smallint DEFAULT 0,
	reason varchar(20)
) ;
ALTER  TABLE gid_clearing OWNER TO scd_testuser;
CREATE INDEX ix_gid_clearing ON gid_clearing (gid);


CREATE TABLE gid_clearing_mail (
	id smallint NOT NULL,
	subject varchar(255),
	body varchar(4000)
) ;
ALTER  TABLE gid_clearing_mail OWNER TO scd_testuser;
ALTER TABLE gid_clearing_mail ALTER COLUMN ID SET NOT NULL;


CREATE TABLE gid_clientid_mig_override (
	gid char(8) NOT NULL,
	clientid smallint
) ;
ALTER  TABLE gid_clientid_mig_override OWNER TO scd_testuser;
ALTER TABLE gid_clientid_mig_override ADD PRIMARY KEY (gid);
ALTER TABLE gid_clientid_mig_override ALTER COLUMN GID SET NOT NULL;


CREATE TABLE gid_data (
	gid char(8),
	valid_date timestamp,
	leave_date timestamp,
	user_type char(1),
	owner char(8),
	join_date timestamp,
	sponsor char(8),
	c char(2),
	o varchar(16),
	ou varchar(32),
	l varchar(32),
	appl_internal_id varchar(32),
	appl_name varchar(20),
	confirmed char(1),
	scd char(1),
	isinscd smallint,
	delete_date timestamp,
	delete_uid char(8),
	modify_data_date timestamp,
	modify_data_uid char(8),
	confirm_date timestamp,
	sync_date timestamp,
	id bigint GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1 MAXVALUE 9223372036854775807 MINVALUE 1 CYCLE CACHE 10 )
) ;
ALTER  TABLE gid_data OWNER TO scd_testuser;
CREATE INDEX ix_gid_data ON gid_data (gid);
CREATE INDEX ix_gid_data_deletedate ON gid_data (delete_date);
CREATE INDEX ix_gid_data_leavedate ON gid_data (leave_date);
CREATE INDEX ix_gid_data_validdate ON gid_data (valid_date);
CREATE INDEX ix_gid_dn ON gid_data (c, o, ou, l);
ALTER TABLE gid_data ALTER COLUMN ID SET NOT NULL;


CREATE TABLE gid_data_log (
	operation varchar(20),
	ts timestamp,
	gid_old char(8),
	gid_new char(8),
	valid_date_old char(19),
	valid_date_new char(19),
	leave_date_old char(19),
	leave_date_new char(19),
	user_type_old char(1),
	user_type_new char(1),
	owner_old char(8),
	owner_new char(8),
	join_date_old char(19),
	join_date_new char(19),
	sponsor_old char(8),
	sponsor_new char(8),
	c_old char(2),
	c_new char(2),
	o_old varchar(16),
	o_new varchar(16),
	ou_old varchar(32),
	ou_new varchar(32),
	l_old varchar(32),
	l_new varchar(32),
	appl_internal_id_old varchar(32),
	appl_internal_id_new varchar(32),
	appl_name_old varchar(20),
	appl_name_new varchar(20),
	confirmed_old char(1),
	confirmed_new char(1),
	scd_old char(1),
	scd_new char(1),
	delete_date_old char(19),
	delete_date_new char(19),
	delete_uid_old char(8),
	delete_uid_new char(8),
	modify_data_date_old char(19),
	modify_data_date_new char(19),
	modify_data_uid_old char(8),
	modify_data_uid_new char(8),
	confirm_date_old char(19),
	confirm_date_new char(19),
	changed_by varchar(128),
	notes varchar(256)
) ;
ALTER  TABLE gid_data_log OWNER TO scd_testuser;


CREATE TABLE gid_invalid_owners (
	gid varchar(8) NOT NULL,
	first_detection_date timestamp NOT NULL,
	latest_detection_date timestamp NOT NULL
) ;
ALTER  TABLE gid_invalid_owners OWNER TO scd_testuser;
CREATE UNIQUE INDEX gid_invalid_owners_index1 ON gid_invalid_owners (gid);
ALTER TABLE gid_invalid_owners ALTER COLUMN LATEST_DETECTION_DATE SET NOT NULL;
ALTER TABLE gid_invalid_owners ALTER COLUMN FIRST_DETECTION_DATE SET NOT NULL;
ALTER TABLE gid_invalid_owners ALTER COLUMN GID SET NOT NULL;


CREATE TABLE gid_log (
	operation varchar(10),
	ts timestamp,
	gid char(8),
	row_id varchar(20),
	attribute varchar(20),
	old_val varchar(40),
	new_val varchar(40),
	changed_by varchar(40),
	origin_table varchar(10),
	notes varchar(256)
) ;
ALTER  TABLE gid_log OWNER TO scd_testuser;
CREATE INDEX ix_gid_log_gid ON gid_log (gid);
CREATE INDEX ix_gid_log_ts ON gid_log (ts);


CREATE TABLE gid_mapping (
	gid varchar(8),
	c varchar(2),
	o varchar(32),
	ou varchar(32),
	ou_new varchar(32),
	l varchar(32),
	user_type varchar(1),
	gv varchar(8),
	lv_full varchar(8),
	lv_join varchar(8)
) ;
ALTER  TABLE gid_mapping OWNER TO scd_testuser;
CREATE INDEX ix_gid_mapping ON gid_mapping (gid);
CREATE INDEX ix_gid_mapping_c ON gid_mapping (c);
CREATE INDEX ix_gid_mapping_l ON gid_mapping (l);
CREATE INDEX ix_gid_mapping_o ON gid_mapping (o);
CREATE INDEX ix_gid_mapping_ou ON gid_mapping (ou);
CREATE INDEX ix_gid_mapping_ou_new ON gid_mapping (ou_new);


CREATE TABLE gid_mapping_old (
	gid varchar(8),
	c varchar(2),
	o varchar(32),
	ou varchar(32),
	ou_new varchar(32),
	l varchar(32),
	user_type varchar(1),
	gv varchar(8),
	lv_full varchar(8),
	lv_join varchar(8)
) ;
ALTER  TABLE gid_mapping_old OWNER TO scd_testuser;


CREATE TABLE gid_pw (
	userid varchar(8),
	txt varchar(255),
	pw varchar(32),
	chk varchar(255),
	typ varchar(255),
	internal smallint NOT NULL DEFAULT 0
) ;
ALTER  TABLE gid_pw OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixuserid ON gid_pw (userid);
ALTER TABLE gid_pw ALTER COLUMN INTERNAL SET NOT NULL;


CREATE TABLE gid_requestors (
	userid varchar(8) NOT NULL,
	requestor varchar(8) NOT NULL
) ;
ALTER  TABLE gid_requestors OWNER TO scd_testuser;
ALTER TABLE gid_requestors ADD PRIMARY KEY (userid,requestor);
ALTER TABLE gid_requestors ALTER COLUMN USERID SET NOT NULL;
ALTER TABLE gid_requestors ALTER COLUMN REQUESTOR SET NOT NULL;


CREATE TABLE gid_unknown_dns (
	gid varchar(8) NOT NULL,
	detection_date timestamp NOT NULL,
	type bigint NOT NULL DEFAULT 0
) ;
ALTER  TABLE gid_unknown_dns OWNER TO scd_testuser;
ALTER TABLE gid_unknown_dns ALTER COLUMN DETECTION_DATE SET NOT NULL;
ALTER TABLE gid_unknown_dns ALTER COLUMN GID SET NOT NULL;
ALTER TABLE gid_unknown_dns ALTER COLUMN TYPE SET NOT NULL;


CREATE TABLE gid_user (
	gid char(8),
	creator char(8),
	creation_date timestamp,
	surname varchar(40),
	given_name varchar(40),
	name_prefix varchar(16),
	name_suffix varchar(16),
	birth_date timestamp,
	birth_place varchar(40),
	birth_name varchar(40),
	gender char(1),
	modify_user_date timestamp,
	modify_user_uid char(8),
	orig_gid char(8),
	clientid smallint
) ;
ALTER  TABLE gid_user OWNER TO scd_testuser;
CREATE INDEX ix_gid_given_name ON gid_user (given_name);
CREATE INDEX ix_gid_surname ON gid_user (surname);
CREATE UNIQUE INDEX ix_gid_user ON gid_user (gid);


CREATE TABLE gid_user_log (
	operation varchar(20),
	ts timestamp,
	gid_old char(8),
	gid_new char(8),
	surname_old varchar(40),
	surname_new varchar(40),
	given_name_old varchar(40),
	given_name_new varchar(40),
	name_prefix_old varchar(16),
	name_prefix_new varchar(16),
	name_suffix_old varchar(16),
	name_suffix_new varchar(16),
	birth_date_old timestamp,
	birth_date_new timestamp,
	birth_place_old varchar(40),
	birth_place_new varchar(40),
	birth_name_old varchar(40),
	birth_name_new varchar(40),
	gender_old char(1),
	gender_new char(1),
	modify_user_date_old char(19),
	modify_user_date_new char(19),
	modify_user_uid_old char(8),
	modify_user_uid_new char(8),
	orig_gid_old char(8),
	orig_gid_new char(8),
	changed_by varchar(128),
	clientid_new smallint,
	clientid_old smallint,
	notes varchar(256)
) ;
ALTER  TABLE gid_user_log OWNER TO scd_testuser;


CREATE TABLE hd_user (
	gid varchar(8) NOT NULL,
	role_id varchar(10) NOT NULL,
	approval_date timestamp,
	approver varchar(8),
	comments varchar(150)
) ;
ALTER  TABLE hd_user OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixhd_user ON hd_user (gid);
ALTER TABLE hd_user ALTER COLUMN GID SET NOT NULL;
ALTER TABLE hd_user ALTER COLUMN ROLE_ID SET NOT NULL;


CREATE TABLE invalid_data_suppliers (
	gid varchar(8) NOT NULL,
	first_detection_date timestamp NOT NULL,
	latest_detection_date timestamp NOT NULL
) ;
ALTER  TABLE invalid_data_suppliers OWNER TO scd_testuser;
ALTER TABLE invalid_data_suppliers ALTER COLUMN GID SET NOT NULL;
ALTER TABLE invalid_data_suppliers ALTER COLUMN FIRST_DETECTION_DATE SET NOT NULL;
ALTER TABLE invalid_data_suppliers ALTER COLUMN LATEST_DETECTION_DATE SET NOT NULL;


CREATE TABLE "join" (
	bez varchar(20),
	lfd smallint,
	txt varchar(120),
	liefntnr integer,
	joinset varchar(20)
) ;
ALTER  TABLE "join" OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixjoin ON "join" (bez, lfd);


CREATE TABLE konfig (
	konfignr char(10),
	sprache char(2),
	txt varchar(120),
	wert varchar(255)
) ;
ALTER  TABLE konfig OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixkonfig ON konfig (konfignr, sprache);


CREATE TABLE liefnt (
	liefntnr integer,
	liefntmin integer,
	liefntmax integer,
	senderid varchar(120),
	stellvid varchar(120),
	nick varchar(120),
	mailsds varchar(120),
	mailsuz varchar(120),
	notify char(4),
	sprache char(2),
	zchnsatz varchar(20),
	lieferart varchar(32),
	lieferset varchar(20),
	lieferkey varchar(20),
	mainid varchar(120),
	delta smallint,
	bdsg timestamp,
	aptool smallint,
	dgetid char(8),
	isv3 timestamp,
	txv3 varchar(255),
	ftread char(8),
	pagids smallint,
	updcurr smallint
) ;
ALTER  TABLE liefnt OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixliefnt ON liefnt (liefntnr);
CREATE INDEX ixliefntmainid ON liefnt (mainid);


CREATE TABLE liefnt_contacts (
	mainid varchar(8) NOT NULL,
	gid varchar(8) NOT NULL,
	info varchar(255)
) ;
ALTER  TABLE liefnt_contacts OWNER TO scd_testuser;
ALTER TABLE liefnt_contacts ADD PRIMARY KEY (mainid,gid);
ALTER TABLE liefnt_contacts ALTER COLUMN MAINID SET NOT NULL;
ALTER TABLE liefnt_contacts ALTER COLUMN GID SET NOT NULL;


CREATE TABLE liefnt_details (
	liefntnr integer NOT NULL,
	phone varchar(32),
	url varchar(512),
	desc_html_de varchar(4000),
	desc_html_en varchar(4000),
	desc_html_pt varchar(4000),
	desc_html_es varchar(4000),
	desc_html_fr varchar(4000)
) ;
ALTER  TABLE liefnt_details OWNER TO scd_testuser;
ALTER TABLE liefnt_details ADD PRIMARY KEY (liefntnr);


CREATE TABLE liefnt_gid (
	mainid char(8) NOT NULL,
	typ char(8) NOT NULL,
	description varchar(120),
	userid varchar(120),
	password varchar(20),
	tech_contact varchar(120),
	tech_contact_mail varchar(120),
	ta_in varchar(30),
	ip_out varchar(16),
	ta_out varchar(30),
	contractnr varchar(16),
	servername varchar(80),
	host varchar(80),
	lang char(2),
	sap_client varchar(10),
	max_connections char(3),
	sap_gateway varchar(16),
	systemnr varchar(16),
	secure varchar(20),
	snc_qop varchar(16),
	snc_partnername varchar(120),
	snc_myname varchar(120),
	snc_lib varchar(120),
	unicode varchar(16),
	trace char(1),
	ip_out_err varchar(16),
	ta_out_err varchar(30)
) ;
ALTER  TABLE liefnt_gid OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixliefnt_gid ON liefnt_gid (mainid, typ);
ALTER TABLE liefnt_gid ALTER COLUMN MAINID SET NOT NULL;
ALTER TABLE liefnt_gid ALTER COLUMN TYP SET NOT NULL;


CREATE TABLE liefnt_srq (
	mainid char(8),
	c char(2),
	o varchar(16),
	l varchar(32),
	ut varchar(4),
	clientid varchar(16),
	srq_id char(8),
	takeover char(1),
	leave_max smallint
) ;
ALTER  TABLE liefnt_srq OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixliefnt_srq ON liefnt_srq (mainid, c, o, l);


CREATE TABLE mail_log (
	uuid varchar(36),
	sent_date timestamp,
	intended_recipients varchar(1024),
	sent_to varchar(1024),
	mail_template_id smallint,
	email_type varchar(50),
	subject varchar(512),
	app_name varchar(32),
	status varchar(512)
) ;
ALTER  TABLE mail_log OWNER TO scd_testuser;


CREATE TABLE mandant_department_mapping (
	consumer_client_id smallint,
	owner_client_id smallint,
	department varchar(255)
) ;
ALTER  TABLE mandant_department_mapping OWNER TO scd_testuser;


CREATE TABLE mandant_dn_mapping (
	mandant varchar(20),
	c varchar(2),
	o varchar(16)
) ;
ALTER  TABLE mandant_dn_mapping OWNER TO scd_testuser;


CREATE TABLE mesg (
	mesgnr char(10),
	sprache char(2),
	typ char(1),
	txt varchar(255)
) ;
ALTER  TABLE mesg OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixmesg ON mesg (mesgnr, sprache);


CREATE TABLE msteams_domain_whitelist (
	client_id smallint,
	domain varchar(255)
) ;
ALTER  TABLE msteams_domain_whitelist OWNER TO scd_testuser;


CREATE TABLE national_holiday (
	id bigint NOT NULL,
	iso_country_code varchar(2) NOT NULL,
	scd_country_code varchar(2) NOT NULL,
	holiday_data text
) ;
ALTER  TABLE national_holiday OWNER TO scd_testuser;
CREATE UNIQUE INDEX national_holiday_index_c ON national_holiday (iso_country_code);
ALTER TABLE national_holiday ADD PRIMARY KEY (id);
ALTER TABLE national_holiday ALTER COLUMN SCD_COUNTRY_CODE SET NOT NULL;
ALTER TABLE national_holiday ALTER COLUMN ISO_COUNTRY_CODE SET NOT NULL;
ALTER TABLE national_holiday ALTER COLUMN ID SET NOT NULL;


CREATE TABLE prot (
	liefnr integer,
	senderid varchar(120),
	liefntnr integer,
	lieferart char(8),
	status char(10),
	grund char(10),
	liefanz integer,
	liefende timestamp,
	prfanz integer,
	prfende timestamp,
	makanz integer,
	makende timestamp,
	pid integer,
	makstart timestamp
) ;
ALTER  TABLE prot OWNER TO scd_testuser;
CREATE INDEX ixprotdat ON prot (liefende);
CREATE UNIQUE INDEX ixprotnr ON prot (liefnr);


CREATE TABLE prot_pid (
	liefnr integer NOT NULL,
	started timestamp NOT NULL
) ;
ALTER  TABLE prot_pid OWNER TO scd_testuser;
ALTER TABLE prot_pid ADD PRIMARY KEY (liefnr);
ALTER TABLE prot_pid ALTER COLUMN LIEFNR SET NOT NULL;
ALTER TABLE prot_pid ALTER COLUMN STARTED SET NOT NULL;


CREATE TABLE request_err (
	id integer NOT NULL,
	attr varchar(20) NOT NULL,
	idx smallint NOT NULL,
	mesgnr char(10),
	mesgtyp char(1) NOT NULL,
	mesgtxt varchar(255) NOT NULL
) ;
ALTER  TABLE request_err OWNER TO scd_testuser;
ALTER TABLE request_err ADD PRIMARY KEY (id,idx);
ALTER TABLE request_err ALTER COLUMN ID SET NOT NULL;
ALTER TABLE request_err ALTER COLUMN ATTR SET NOT NULL;
ALTER TABLE request_err ALTER COLUMN IDX SET NOT NULL;
ALTER TABLE request_err ALTER COLUMN MESGTYP SET NOT NULL;
ALTER TABLE request_err ALTER COLUMN MESGTXT SET NOT NULL;


CREATE TABLE request_in (
	id integer NOT NULL,
	attr varchar(20) NOT NULL,
	val varchar(1024)
) ;
ALTER  TABLE request_in OWNER TO scd_testuser;
ALTER TABLE request_in ADD PRIMARY KEY (attr,id);
ALTER TABLE request_in ALTER COLUMN ID SET NOT NULL;
ALTER TABLE request_in ALTER COLUMN ATTR SET NOT NULL;


CREATE TABLE request_log (
	id integer NOT NULL,
	ts timestamp NOT NULL,
	duration integer,
	type varchar(40) NOT NULL,
	userid varchar(8) NOT NULL,
	status smallint NOT NULL
) ;
ALTER  TABLE request_log OWNER TO scd_testuser;
ALTER TABLE request_log ADD PRIMARY KEY (id);
ALTER TABLE request_log ALTER COLUMN ID SET NOT NULL;
ALTER TABLE request_log ALTER COLUMN TS SET NOT NULL;
ALTER TABLE request_log ALTER COLUMN TYPE SET NOT NULL;
ALTER TABLE request_log ALTER COLUMN USERID SET NOT NULL;
ALTER TABLE request_log ALTER COLUMN STATUS SET NOT NULL;


CREATE TABLE request_out (
	id integer NOT NULL,
	idx smallint NOT NULL,
	attr varchar(20) NOT NULL,
	val varchar(1024)
) ;
ALTER  TABLE request_out OWNER TO scd_testuser;
ALTER TABLE request_out ADD PRIMARY KEY (attr,idx,id);
ALTER TABLE request_out ALTER COLUMN ID SET NOT NULL;
ALTER TABLE request_out ALTER COLUMN IDX SET NOT NULL;
ALTER TABLE request_out ALTER COLUMN ATTR SET NOT NULL;


CREATE TABLE rtc_domain_replacement (
	branding_domain varchar(100) NOT NULL,
	rtc_domain varchar(100) NOT NULL
) ;
ALTER  TABLE rtc_domain_replacement OWNER TO scd_testuser;
ALTER TABLE rtc_domain_replacement ALTER COLUMN RTC_DOMAIN SET NOT NULL;
ALTER TABLE rtc_domain_replacement ALTER COLUMN BRANDING_DOMAIN SET NOT NULL;


CREATE TABLE sgid_err (
	f_nummer integer NOT NULL,
	f_datum timestamp NOT NULL,
	liefntnr integer NOT NULL,
	lfd_nr integer NOT NULL,
	f_text varchar(1024)
) ;
ALTER  TABLE sgid_err OWNER TO scd_testuser;
CREATE INDEX ixsgid_err_f_datum ON sgid_err (f_datum);
CREATE INDEX ixsgid_err_liefnt ON sgid_err (liefntnr);
CREATE INDEX ixsgid_err_txt ON sgid_err (f_text);
ALTER TABLE sgid_err ALTER COLUMN F_NUMMER SET NOT NULL;
ALTER TABLE sgid_err ALTER COLUMN F_DATUM SET NOT NULL;
ALTER TABLE sgid_err ALTER COLUMN LIEFNTNR SET NOT NULL;
ALTER TABLE sgid_err ALTER COLUMN LFD_NR SET NOT NULL;


CREATE TABLE sgid_new_err (
	id bigint GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1 MAXVALUE 9223372036854775807 MINVALUE 1 NO CYCLE CACHE 20 ),
	err_number integer,
	err_date timestamp,
	liefntnr integer,
	err_text varchar(1024),
	email_due_date timestamp,
	email_sent_date timestamp,
	email_sent smallint DEFAULT 0
) ;
ALTER  TABLE sgid_new_err OWNER TO scd_testuser;
ALTER TABLE sgid_new_err ALTER COLUMN ID SET NOT NULL;


CREATE TABLE stmdat (
	c char(2),
	cnameeng varchar(64),
	cnamenat varchar(64),
	o varchar(16),
	onameint varchar(128),
	onamenat varchar(128),
	ou varchar(32),
	ounameshort varchar(32),
	ounameint varchar(128),
	ounamenat varchar(128),
	l varchar(32),
	lnameshort varchar(32),
	lnameint varchar(32),
	lnamenat varchar(32),
	street varchar(64),
	streetadrnat varchar(64),
	postalcode varchar(16),
	postadrint1 varchar(64),
	postadrint2 varchar(64),
	postadrnat1 varchar(64),
	postadrnat2 varchar(64),
	phonenumex varchar(32),
	faxnumex varchar(32),
	regofficeplant varchar(64),
	urlo varchar(128),
	urlou varchar(128),
	urll varchar(128),
	salid char(16),
	utc varchar(64),
	company varchar(32),
	cgroup varchar(32),
	liefnr integer,
	konzbet varchar(64),
	konzstat char(1),
	lnameeng varchar(32),
	gps varchar(40),
	isvirtual char(1),
	stprovince varchar(120),
	clientname varchar(64),
	clientid smallint
) ;
ALTER  TABLE stmdat OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixstmdat ON stmdat (c, o, ou, l, liefnr);
CREATE INDEX ixstmdat_c ON stmdat (c);
CREATE INDEX ixstmdat_l ON stmdat (l);
CREATE INDEX ixstmdat_o ON stmdat (o);
CREATE INDEX ixstmdat_ou ON stmdat (ou);


CREATE TABLE stmtzone (
	l varchar(32),
	tzid varchar(64)
) ;
ALTER  TABLE stmtzone OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixstmtzoneloc ON stmtzone (l);


CREATE TABLE tcgids (
	tcgid char(8) NOT NULL,
	cn varchar(64)
) ;
ALTER  TABLE tcgids OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixtcgids ON tcgids (tcgid);
ALTER TABLE tcgids ALTER COLUMN TCGID SET NOT NULL;


CREATE TABLE to_delete_konfig_log (
	logid bigint NOT NULL,
	gid varchar(10) NOT NULL,
	konfignr varchar(10) NOT NULL,
	timestamp timestamp NOT NULL,
	txtnew varchar(120),
	txtold varchar(120),
	wertnew varchar(255),
	wertold varchar(255),
	actiontype varchar(10) NOT NULL
) ;
ALTER  TABLE to_delete_konfig_log OWNER TO scd_testuser;
ALTER TABLE to_delete_konfig_log ADD PRIMARY KEY (logid);
ALTER TABLE to_delete_konfig_log ALTER COLUMN ACTIONTYPE SET NOT NULL;
ALTER TABLE to_delete_konfig_log ALTER COLUMN TIMESTAMP SET NOT NULL;
ALTER TABLE to_delete_konfig_log ALTER COLUMN KONFIGNR SET NOT NULL;
ALTER TABLE to_delete_konfig_log ALTER COLUMN GID SET NOT NULL;
ALTER TABLE to_delete_konfig_log ALTER COLUMN LOGID SET NOT NULL;


CREATE TABLE to_delete_konfig_user (
	gid varchar(10) NOT NULL
) ;
ALTER  TABLE to_delete_konfig_user OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixkonfiguser ON to_delete_konfig_user (gid);
ALTER TABLE to_delete_konfig_user ALTER COLUMN GID SET NOT NULL;


CREATE TABLE validorgcodeschcm (
	department varchar(64),
	startdate varchar(16),
	enddate varchar(16)
) ;
ALTER  TABLE validorgcodeschcm OWNER TO scd_testuser;


CREATE TABLE validorgcodesmanual (
	department varchar(64),
	startdate varchar(16),
	enddate varchar(16)
) ;
ALTER  TABLE validorgcodesmanual OWNER TO scd_testuser;


CREATE TABLE webs_log (
	ts timestamp,
	request_id varchar(20) NOT NULL,
	requestor varchar(20),
	endpoint varchar(6),
	request_type varchar(10),
	parameter varchar(20),
	val varchar(50),
	response varchar(256)
) ;
ALTER  TABLE webs_log OWNER TO scd_testuser;
CREATE INDEX ix_webs_log_ts ON webs_log (ts);
ALTER TABLE webs_log ADD PRIMARY KEY (request_id);
ALTER TABLE webs_log ALTER COLUMN REQUEST_ID SET NOT NULL;


CREATE TABLE webui_all_attributes (
	attr_txt varchar(120),
	attr_ui varchar(20)
) ;
COMMENT ON COLUMN webui_all_attributes.attr_ui IS E'attribute name WEBUI';
ALTER  TABLE webui_all_attributes OWNER TO scd_testuser;


CREATE TABLE webui_bookmarked_employees (
	id numeric(38) NOT NULL,
	userid varchar(8) NOT NULL,
	bookmarked_gid varchar(8) NOT NULL,
	timestamp timestamp NOT NULL
) ;
ALTER  TABLE webui_bookmarked_employees OWNER TO scd_testuser;
ALTER TABLE webui_bookmarked_employees ADD PRIMARY KEY (id);
ALTER TABLE webui_bookmarked_employees ALTER COLUMN ID SET NOT NULL;
ALTER TABLE webui_bookmarked_employees ALTER COLUMN USERID SET NOT NULL;
ALTER TABLE webui_bookmarked_employees ALTER COLUMN BOOKMARKED_GID SET NOT NULL;
ALTER TABLE webui_bookmarked_employees ALTER COLUMN TIMESTAMP SET NOT NULL;


CREATE TABLE webui_cd_attribute_mapping (
	attr varchar(20),
	attr_ui varchar(20),
	attr_txt varchar(20)
) ;
COMMENT ON COLUMN webui_cd_attribute_mapping.attr IS E'attribute webserviceNG';
COMMENT ON COLUMN webui_cd_attribute_mapping.attr_txt IS E'txt=ldap attribute name';
COMMENT ON COLUMN webui_cd_attribute_mapping.attr_ui IS E'attribute name scd web ui';
ALTER  TABLE webui_cd_attribute_mapping OWNER TO scd_testuser;


CREATE TABLE webui_cd_fksource_mapping (
	liefntnr bigint NOT NULL,
	fksource varchar(40) NOT NULL,
	redirect varchar(500) NOT NULL
) ;
ALTER  TABLE webui_cd_fksource_mapping OWNER TO scd_testuser;
ALTER TABLE webui_cd_fksource_mapping ALTER COLUMN REDIRECT SET NOT NULL;
ALTER TABLE webui_cd_fksource_mapping ALTER COLUMN FKSOURCE SET NOT NULL;
ALTER TABLE webui_cd_fksource_mapping ALTER COLUMN LIEFNTNR SET NOT NULL;


CREATE TABLE webui_cd_gender_pronoun (
	id bigint NOT NULL,
	value varchar(40)
) ;
ALTER  TABLE webui_cd_gender_pronoun OWNER TO scd_testuser;
ALTER TABLE webui_cd_gender_pronoun ALTER COLUMN ID SET NOT NULL;


CREATE TABLE webui_cd_key_values (
	id bigint NOT NULL,
	key varchar(50) NOT NULL,
	language varchar(2) NOT NULL,
	infotext varchar(800),
	redirect varchar(500),
	redirectsponsoredentries varchar(500)
) ;
ALTER  TABLE webui_cd_key_values OWNER TO scd_testuser;
ALTER TABLE webui_cd_key_values ALTER COLUMN LANGUAGE SET NOT NULL;
ALTER TABLE webui_cd_key_values ALTER COLUMN KEY SET NOT NULL;
ALTER TABLE webui_cd_key_values ALTER COLUMN ID SET NOT NULL;


CREATE TABLE webui_change_data_config (
	liefntnr bigint NOT NULL,
	attribute varchar(20) NOT NULL,
	usertype varchar(1) NOT NULL,
	recordtype varchar(1) NOT NULL,
	check_are smallint NOT NULL DEFAULT 0,
	mail_to_sponsor smallint NOT NULL DEFAULT 0,
	priority bigint DEFAULT 0,
	key varchar(50),
	check_fksource bigint NOT NULL DEFAULT 0
) ;
COMMENT ON COLUMN webui_change_data_config.check_are IS E'0=false, 1=true';
COMMENT ON COLUMN webui_change_data_config.check_fksource IS E'0=false, 1=true';
COMMENT ON COLUMN webui_change_data_config.mail_to_sponsor IS E'0=false, 1=true';
COMMENT ON COLUMN webui_change_data_config.priority IS E'use entry with maximum priority';
ALTER  TABLE webui_change_data_config OWNER TO scd_testuser;
ALTER TABLE webui_change_data_config ALTER COLUMN CHECK_FKSOURCE SET NOT NULL;
ALTER TABLE webui_change_data_config ALTER COLUMN RECORDTYPE SET NOT NULL;
ALTER TABLE webui_change_data_config ALTER COLUMN USERTYPE SET NOT NULL;
ALTER TABLE webui_change_data_config ALTER COLUMN ATTRIBUTE SET NOT NULL;
ALTER TABLE webui_change_data_config ALTER COLUMN MAIL_TO_SPONSOR SET NOT NULL;
ALTER TABLE webui_change_data_config ALTER COLUMN CHECK_ARE SET NOT NULL;
ALTER TABLE webui_change_data_config ALTER COLUMN LIEFNTNR SET NOT NULL;


CREATE TABLE webui_countries (
	id bigint NOT NULL,
	country_code varchar(2) NOT NULL,
	country_name varchar(40) NOT NULL,
	language varchar(2) NOT NULL
) ;
ALTER  TABLE webui_countries OWNER TO scd_testuser;
ALTER TABLE webui_countries ALTER COLUMN ID SET NOT NULL;
ALTER TABLE webui_countries ALTER COLUMN COUNTRY_CODE SET NOT NULL;
ALTER TABLE webui_countries ALTER COLUMN COUNTRY_NAME SET NOT NULL;
ALTER TABLE webui_countries ALTER COLUMN LANGUAGE SET NOT NULL;


CREATE TABLE webui_last_viewed_employees (
	id bigint NOT NULL,
	userid varchar(8) NOT NULL,
	employee_gid varchar(8) NOT NULL,
	employee_sn varchar(40),
	employee_gn varchar(40),
	timestamp timestamp NOT NULL DEFAULT statement_timestamp()
) ;
ALTER  TABLE webui_last_viewed_employees OWNER TO scd_testuser;
CREATE UNIQUE INDEX webui_last_viewed_employee_pk ON webui_last_viewed_employees (id);
ALTER TABLE webui_last_viewed_employees ALTER COLUMN ID SET NOT NULL;
ALTER TABLE webui_last_viewed_employees ALTER COLUMN USERID SET NOT NULL;
ALTER TABLE webui_last_viewed_employees ALTER COLUMN EMPLOYEE_GID SET NOT NULL;
ALTER TABLE webui_last_viewed_employees ALTER COLUMN TIMESTAMP SET NOT NULL;


CREATE TABLE webui_national_holidays (
	scd_country_code varchar(2) NOT NULL,
	holidaydate timestamp NOT NULL,
	year bigint NOT NULL,
	month bigint NOT NULL,
	holiday varchar(50),
	locations varchar(120)
) ;
ALTER  TABLE webui_national_holidays OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixwebuinationalholidays ON webui_national_holidays (scd_country_code, holidaydate, holiday);
ALTER TABLE webui_national_holidays ALTER COLUMN SCD_COUNTRY_CODE SET NOT NULL;
ALTER TABLE webui_national_holidays ALTER COLUMN HOLIDAYDATE SET NOT NULL;
ALTER TABLE webui_national_holidays ALTER COLUMN YEAR SET NOT NULL;
ALTER TABLE webui_national_holidays ALTER COLUMN MONTH SET NOT NULL;


CREATE TABLE webui_user_settings (
	id bigint NOT NULL,
	userid varchar(20) NOT NULL,
	key varchar(100) NOT NULL,
	value varchar(100)
) ;
ALTER  TABLE webui_user_settings OWNER TO scd_testuser;
CREATE UNIQUE INDEX idx_webui_user_settings ON webui_user_settings (userid, "key");
ALTER TABLE webui_user_settings ALTER COLUMN ID SET NOT NULL;
ALTER TABLE webui_user_settings ALTER COLUMN USERID SET NOT NULL;
ALTER TABLE webui_user_settings ALTER COLUMN KEY SET NOT NULL;


CREATE TABLE zchn (
	zchnsatz varchar(20),
	zchn smallint,
	iso88 smallint
) ;
ALTER  TABLE zchn OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixzchn ON zchn (zchnsatz, zchn);


CREATE TABLE zchnsatz (
	zchnsatz varchar(20),
	txt varchar(120)
) ;
ALTER  TABLE zchnsatz OWNER TO scd_testuser;
CREATE UNIQUE INDEX ixzchnsatz ON zchnsatz (zchnsatz);
ALTER TABLE ggw_chart_data ADD CONSTRAINT fk322c2953e47cae50 FOREIGN KEY (reportconfigurationid) REFERENCES ggw_report_config(id) ON DELETE NO ACTION NOT DEFERRABLE INITIALLY IMMEDIATE;
