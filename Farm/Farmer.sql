create table user(					--회원정보 테이블
	user_id varchar(50) not null,
	user_name varchar(100) not null,
	user_phone varchar(100) not null,
	user_email varchar(255) not null,
	user_photo longtext,
	user_photofake longtext,
	user_pass varchar(255) not null,
	primary key(user_id)
);

create table farm(					--농장정보 테이블
	farm_num int not null auto_increment,
	owner_id varchar(255) not null,
	farm_name varchar(255) not null,
	farm_addr longtext not null,
	farm_phone varchar(255) not null,
	farm_size int not null,
	farm_info longtext default "-",
	farm_photo longtext,
	farm_photofake longtext,
	primary key(farm_num),
	constraint fk_owner_id foreign key(owner_id) references owner(owner_id) on delete cascade on update cascade
);


create table regioninfo(			--구역정보 테이블
	region_num int not null auto_increment,
	farm_num int not null,
	region_name varchar(255) not null,
	region_size varchar(255) not null,
	region_maxrentterm varchar(255) not null,
	region_price int not null,
	region_rentstate int not null default 0,
	primary key(region_num),
	constraint fk_farm_num foreign key(farm_num) references farm(farm_num) on delete cascade on update cascade
);

create table diary(					--농장일기 테이블
	diary_num int not null auto_increment,
	diary_title varchar(255) not null,
	diary_date date not null,
	diary_content longtext not null,
	diary_photo1 longtext,
	diary_photo1fake longtext,
	diary_photo2 longtext,
	diary_photo2fake longtext,
	diary_photo3 longtext,
	diary_photo3fake longtext,
	diary_photo4 longtext,
	diary_photo4fake longtext,
	user_id varchar(50) not null,
	primary key(diary_num),
	constraint fk_user_id foreign key(user_id) references user(user_id) on delete cascade on update cascade
);

create table farmrent(				--농장 분양정보 테이블
	rent_num int not null auto_increment,
	region_num int not null,
	user_id varchar(50) not null,
	rent_startdate date not null,
	rent_enddate date not null,
	rent_state int not null,
	rent_date date not null,
	primary key(rent_num),
	constraint fk_region_num foreign key(region_num) references regioninfo(region_num) on delete cascade on update cascade,
	constraint fk_user_id2 foreign key(user_id) references user(user_id) on delete cascade on update cascade
);

create table owner(					--농장주정보 테이블
	owner_id varchar(255) not null,
	owner_pass varchar(255) not null,
	owner_name varchar(255) not null,
	owner_phone varchar(255) not null,
	owner_account varchar(255) not null,
	primary key(owner_id)
);