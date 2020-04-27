

DROP DATABASE IF EXISTS oc9ymp1ljwq5wln2;
CREATE DATABASE oc9ymp1ljwq5wln2;
USE oc9ymp1ljwq5wln2;


CREATE TABLE ip_log (
    log_id INT NOT NULL AUTO_INCREMENT,
    time_str VARCHAR(19),
    ip_addr VARCHAR(16),
    ip_query VARCHAR(16),
    as_field VARCHAR(40),
    country VARCHAR(15),
    countryCode VARCHAR(5),
    city VARCHAR(15),
    region VARCHAR(5),
    regionName VARCHAR(15),
    zip VARCHAR(5),
    timezone VARCHAR(20),
    action_done VARCHAR(20),
    PRIMARY KEY (log_id)
);


CREATE TABLE user_log (
    user_log_id INT NOT NULL AUTO_INCREMENT,
    time_str VARCHAR(19),
    ip_addr VARCHAR(16),
    loginName VARCHAR(20),
    password VARCHAR(20),
    fullName VARCHAR(20),
    action_done VARCHAR(20),
    PRIMARY KEY (user_log_id)
);


CREATE TABLE event_bytime (
    event_log_id INT NOT NULL AUTO_INCREMENT,
    start_time_str VARCHAR(20),
    end_time_str VARCHAR(20),
    event_duration VARCHAR(20),
    on_time_utc VARCHAR(15),
    off_time_utc VARCHAR(15),
    dur_time_utc VARCHAR(15),
    m1 VARCHAR(3),
    m2 VARCHAR(3),
    m3 VARCHAR(3),
    m4 VARCHAR(3),
    m5 VARCHAR(3),
    m6 VARCHAR(3),
    m7 VARCHAR(3),
    m8 VARCHAR(3),
    m9 VARCHAR(3),
    PRIMARY KEY (event_log_id)
);


CREATE TABLE event_bymach (
    event_log_id INT NOT NULL AUTO_INCREMENT,
    mach_num_str VARCHAR(3),
    mach_num VARCHAR(3),
    event_str VARCHAR(20),
    start_time_str VARCHAR(20),
    end_time_str VARCHAR(20),
    start_time_utc VARCHAR(15),
    end_time_utc VARCHAR(15),
    event_duration_utc VARCHAR(15),
    on_time_utc VARCHAR(15),
    off_time_utc VARCHAR(15),
    PRIMARY KEY (event_log_id)
);


CREATE TABLE mach_rt (
    mach_num VARCHAR(2),
    mach_stat_code VARCHAR(20),
    PRIMARY KEY (mach_num)
)


CREATE TABLE mach_stat (
    mach_num VARCHAR(2),
    mach_stat_code VARCHAR(20),
    event_1_desc VARCHAR(10),
    event_1_time VARCHAR(15),
    event_1_dur VARCHAR(15),
    event_2_desc VARCHAR(10),
    event_2_time VARCHAR(15),
    event_2_dur VARCHAR(15),
    event_3_desc VARCHAR(10),
    event_3_time VARCHAR(15),
    event_3_dur VARCHAR(15),
    event_4_desc VARCHAR(10),
    event_4_time VARCHAR(15),
    event_4_dur VARCHAR(15),
    PRIMARY KEY (mach_num)
)


CREATE TABLE phone_entries (
    phone_id INT NOT NULL AUTO_INCREMENT,
    ip_addr VARCHAR(16),
    phone_name VARCHAR(20),
    phone_num VARCHAR(20),
    is_admin INT,
    mach_watch VARCHAR(2),
    is_active,
    PRIMARY KEY (phone_id)
);

